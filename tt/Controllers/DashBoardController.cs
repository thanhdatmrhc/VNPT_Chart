using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tt.Models;
using tt.ViewModels;
using Oracle.DataAccess.Client;
using System.Data;
using System.Data.SqlClient;
using static tt.ViewModels.LineChartVM;

namespace tt.Controllers
{
    public class DashBoardController : Controller
    {
        // Để cho người dùng thay đổi kiểu thông tin Biều Đồ
        static LoaiDuLieuVM loaiDuLieuVM = new LoaiDuLieuVM();
        //
        static TTVTVM ttvtVM = new TTVTVM();
        // Connection String (trong web.config)
        string oradb = ConfigurationManager.ConnectionStrings["myConnection"].ToString();
        // View Biểu Đồ
        public ActionResult DashBoardByDataType()
        {
            //Master Model chứa các loại dữ liệu và Toàn bộ dữ liệu để vẽ biểu đồ
            var masterModel = new DashBoardByDataTypeVM();
            var lineChartData = GetLineChartData();
            masterModel.LineChartData = lineChartData;
            masterModel.LoaiDuLieu = loaiDuLieuVM;
            return View(masterModel);
        }

        public ActionResult DashBoardByTTVT()
        {
            var masterModel = new DashBoardByDataTypeVM();
            var lineChartData = GetLineChartDataByTTVT();
            masterModel.LineChartData = lineChartData;
            masterModel.LoaiDuLieu = loaiDuLieuVM;
            masterModel.TTVT = ttvtVM;
            return View(masterModel);
        }
        // Cung cấp các thông tin cần thiết để vẽ biểu đồ
        private LineChartVM GetLineChartData()
        {
            OracleConnection connection = new OracleConnection(oradb);
            getLoaiDuLieu();
            var colors = ColorsForChart();
            var lineChartData = new LineChartVM();
            var labels = getLabelsData(connection);
            var datasets = new List<LineChartChildVM>();
            // select * from THONGKE where MATKT= order by THOIGIAN
            var tkts = getTKTs(connection);
            var i = 0;
            foreach (TKT t in tkts)
            {
                var childModel = new LineChartChildVM();
                childModel.label = t.tenTKT;
                childModel.borderWidth = 3;
                childModel.backgroundColor = colors[i]/*@"rgb(49,130,189)"*/;
                childModel.borderColor = colors[i]/*@"rgb(49,130,189)"*/;
                childModel.fill = false;
                childModel.lineTension = 0.4;
                childModel.radius = 6;
                var dataList = getDataList(connection, t.maTKT);
                childModel.data = dataList;
                datasets.Add(childModel);
                i++;
            }
            //
            lineChartData.datasets = datasets;
            lineChartData.labels = labels;
            return lineChartData;
        }

        private LineChartVM GetLineChartDataByTTVT()
        {
            OracleConnection connection = new OracleConnection(oradb);
            getLoaiDuLieu();
            ttvtVM.ttvts = getTTVTs(connection);
            if (ttvtVM.selected == null)
                ttvtVM.selected = ttvtVM.ttvts.FirstOrDefault().maTTVT;
            var colors = ColorsForChart();
            var lineChartData = new LineChartVM();
            var labels = getLabelsData(connection);
            var datasets = new List<LineChartChildVM>();
            // select * from THONGKE where MATKT= order by THOIGIAN
            var i = 0;
            var tkts = getTKTs(connection, ttvtVM.selected);
            foreach (TKT t in tkts)
            {
                var childModel = new LineChartChildVM();
                childModel.label = t.tenTKT;
                childModel.borderWidth = 3;
                childModel.backgroundColor = colors[i]/*@"rgb(49,130,189)"*/;
                childModel.borderColor = colors[i]/*@"rgb(49,130,189)"*/;
                childModel.fill = false;
                childModel.lineTension = 0.4;
                childModel.radius = 6;
                var dataList = getDataList(connection, t.maTKT);
                childModel.data = dataList;
                datasets.Add(childModel);
                i++;
            }          
            //
            lineChartData.datasets = datasets;
            lineChartData.labels = labels;
            return lineChartData;
        }
        // Bảng màu cho các đường của biểu đồ
        private string[] ColorsForChart()
        {    
            var Colors = new [] { "#FB3640", "#605F5E", "#1D3461", "#1F487E", "#247BA0", "#241023",
            "#6B0504", "#A3320B", "#D5E68D","#47A025","#0A2E36","#27FB6B","#036D19","#F9DBBD","#FCA17D",
            "#DA627D", "#9A348E", "#0D0628", "08415C", "CC2936", "6B818C"};
            return Colors;
        }
        // Các kiểu dữ liệu Biểu Đồ
        private void getLoaiDuLieu()
        {
            loaiDuLieuVM.loaiDuLieus = (new Dictionary<string, string>(){
                { "SL_TBMPT", "Số lượng thuê bao mới phát triển" },
                { "SL_TBML", "Số lượng thuê bao mở lại"},
                { "SL_TBNH", "Số lượng thuê bao ngưng huỷ" },
                { "TL_GTBH", "Tỷ lệ giảm thuê bao huỷ" }
            });
            if (loaiDuLieuVM.selected == null)
                loaiDuLieuVM.selected = loaiDuLieuVM.loaiDuLieus.FirstOrDefault().Key;
        }
        // Hàm trả ra các nhãn ở dưới biểu đồ
        private List<string> getLabelsData(OracleConnection connection)
        {
            var labels = new List<string>();
            string queryString = "select distinct ltrim(TO_CHAR(THOIGIAN,'MM-YYYY'),'0') " +
                                 "as THOIGIAN from THONGKE order by THOIGIAN";
            OracleCommand command = new OracleCommand(queryString, connection);
            connection.Open();
            OracleDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                labels.Add(reader[columnName: "THOIGIAN"].ToString());
            }
            connection.Close();
            return labels;
        }
        // Hàm trả ra danh sách TTVT
        private List<TTVT> getTTVTs(OracleConnection connection)
        {
            var trungTam = new List<TTVT>();
            string queryString = "select * from TTVT";
            OracleCommand command = new OracleCommand(queryString, connection);
            connection.Open();
            OracleDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                var t = new TTVT();
                t.maTTVT = reader["MATTVT"].ToString();
                t.tenTTVT = reader["TENTTVT"].ToString();
                trungTam.Add(t);
            }
            connection.Close();
            return trungTam;
        }
        // Hàm trả ra danh sách các tổ kỹ thuật
        private List<TKT> getTKTs(OracleConnection connection)
        {
            var tokythuats = new List<TKT>();
            string queryString = "select * from TKT";
            OracleCommand command = new OracleCommand(queryString, connection);
            connection.Open();
            OracleDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                var t = new TKT();
                t.maTKT = reader["MATKT"].ToString();
                t.tenTKT = reader["TENTKT"].ToString();
                tokythuats.Add(t);
            }
            connection.Close();
            return tokythuats;
        }
        private List<TKT> getTKTs(OracleConnection connection, string maTTVT)
        {
            var tokythuats = new List<TKT>();
            string queryString;
            if (maTTVT == "*") {
                queryString = "select * from TKT";
            }
            else
            {
                queryString = "select * from TKT where substr(MATKT,5,1) = substr('"+maTTVT+"',5,1)";
            }
            OracleCommand command = new OracleCommand(queryString, connection);
            connection.Open();
            OracleDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                var t = new TKT();
                t.maTKT = reader["MATKT"].ToString();
                t.tenTKT = reader["TENTKT"].ToString();
                tokythuats.Add(t);
            }
            connection.Close();
            return tokythuats;
        }
        // Hàm để lấy thông số các điểm trên biểu đồ
        private List<int> getDataList(OracleConnection connection, string maTKT)
        {
            var dataList = new List<int>();
            string queryString = "select * from THONGKE where MATKT = '" + maTKT + "' order by THOIGIAN";
            OracleCommand command = new OracleCommand(queryString, connection);
            connection.Open();
            OracleDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int i = Convert.ToInt32(reader[loaiDuLieuVM.selected]);
                dataList.Add(i);
            }
            connection.Close();
            return dataList;
        }
        // Hàm phía dưới [HttpPost] sẽ trực tiếp xử lý thông tin kiểu POST nhận vào từ người dùng
        [HttpPost]
        // Hàm để thay đổi kiểu dữ liệu hiển thị trên Biểu Đồ
        public ActionResult HandleRequestDataType (FormCollection formCollection)
        {   
            // Trích kiểu dữ liệu mà người dùng đã yêu cầu
            string loaiDLMoi = formCollection["loaiDL"].ToString();
            // Gán vào selected của loaiDuLieuVM
            loaiDuLieuVM.selected = loaiDLMoi;       
            // Redirect lại để thực hiện thay đổi
            return RedirectToAction("DashBoardByDataType");
        }
        [HttpPost]
        public ActionResult HandleRequestDataTypeTTVT(FormCollection formCollection)
        {
            // Trích kiểu dữ liệu mà người dùng đã yêu cầu
            string loaiDLMoi = formCollection["loaiDL"].ToString();
            string ttvtMoi = formCollection["ttvt"].ToString();
            // Gán vào selected của loaiDuLieuVM
            loaiDuLieuVM.selected = loaiDLMoi;
            ttvtVM.selected = ttvtMoi;
            // Redirect lại để thực hiện thay đổi
            return RedirectToAction("DashBoardByTTVT");
        }




        /// <summary>
        /// ///////////////////////////////////////////////////////////////////////////////
        /// </summary>
        // GET: TTVT
        List<TTVT> ttvts = new List<TTVT>();
        List<TKT> tkts = new List<TKT>();
        // 
        public ActionResult Dashboard()
        {   
            ReadData(oradb);
            var viewModel = new TTVTVM
            {
                /*TTVTs = ttvts*/
            };  
            return View(viewModel);
        }
        // Read Data From The Database
        public void ReadData(string oradb)
        {    
            string queryString = "select * from TTVT";
            try
            {
                using (OracleConnection connection = new OracleConnection(oradb))
                {
                    OracleCommand command = new OracleCommand(queryString, connection);
                    connection.Open();
                    using (OracleDataReader reader = command.ExecuteReader())
                    {
                        // Always call Read before accessing data.
                        while (reader.Read())
                        {
                            ttvts.Add(new TTVT() { tenTTVT = reader["tenTTVT"].ToString(),
                                                   maTTVT = reader["maTTVT"].ToString()});
                        }
                    }
                }
            } 
            catch ( Exception e) { throw e; }
        }

        public ActionResult Test5()
        {
            return RedirectToAction("Index", "Home", new { page = 1, sortBy = "Name" });
        }

        public ActionResult Edit(int id)
        {
            return Content("id= " + id);
        }

        public ActionResult Test0(int? pageIndex, string sortBy)
        {
            if (!pageIndex.HasValue)
                pageIndex = 1;

            if (String.IsNullOrWhiteSpace(sortBy))
                sortBy = "Name";

            return Content(String.Format("pageIndex={0}&sortBy={1}", pageIndex, sortBy));
        }

        [Route("ttvt/bymonthyear/{month:regex(\\d{2}):range(1,12)}/{year:regex(\\d{4})}")]
        public ActionResult asd(int year, int month)
        {
            return Content(year+ " + "+ month + " = " +(month+year));
        }
        public ActionResult byMonthYear(int year, int month)
        {
            return Content(month + "/" + year);
        }
    }
}
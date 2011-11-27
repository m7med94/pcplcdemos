using System;
using System.Net;
using System.Linq;
using System.Windows;
using System.Collections.Generic;
using System.Windows.Controls;
using System.Windows.Navigation;

using System.Threading;

using System.Windows.Threading;
using System.Text;
using System.IO;

namespace SaiaMonitor
{
    public partial class Home : Page
    {
        const string FileName = "file1";
        const string Pref = "http://cgi-demo.saia-sps.dyndns.org/cgi-bin/";
        string CGIread, CGIwrite, CGIfile, CGIorder, W1, W2, W3;

        
        DispatcherTimer _timer;
        const int BUFFER_SIZE = 1024;
        public static ManualResetEvent allDone = new ManualResetEvent(false);

        public Home()
        {
            InitializeComponent();

            // set interval value for Timer tick
            double interval = 10.0;

            _timer = new DispatcherTimer();
#if DEBUG
            interval = 10.0;
#endif
            _timer.Interval = TimeSpan.FromSeconds(interval);
            _timer.Tick += new EventHandler(OnTimerTick);

            Loaded += new RoutedEventHandler(Read_Loaded);
        }

        // Executes when the user navigates to this page.
        protected override void OnNavigatedTo(NavigationEventArgs e)
        {
        }

        void Read_Loaded(object sender, RoutedEventArgs e)
        {
            //  _timer.Start(); 
            CGIread = "readVal.exe?PDP,,MW" + MerkAddress.Text + ",d";
            HttpWebReq(Pref + CGIread);
            MerkAddress.Text = "80";
            MerkValue.Text = "148";
            ReadResult.Text = "response: ???";
        }

        void OnTimerTick(object sender, EventArgs e)
        {   
          CGIread = "readVal.exe?PDP,,MW" + MerkAddress.Text + ",d";
          HttpWebReq(Pref + CGIread);
        }
        
        
        
        
        private void ReadButton_Click(object sender, RoutedEventArgs e)
        {
          CGIread = "readVal.exe?PDP,,MW" + MerkAddress.Text + ",d";
          HttpWebReq(Pref + CGIread);
        }
        
        private void WriteButton_Click(object sender, RoutedEventArgs e)
        {
          CGIwrite = "writeVal.exe?PDP,,MW" + MerkAddress.Text + ",d+" 
               + MerkValue.Text;
          HttpWebReq(Pref + CGIwrite);
        }
        
        private void FileButton_Click(object sender, RoutedEventArgs e)
        {
          CGIfile = "ReadFile.exe?" + FileName;
          HttpWebReq(Pref + CGIfile);
        }
        
        //to read 8 merken MW80 - MW88
        private void OrderButton_Click(object sender, RoutedEventArgs e)
        {
          CGIorder = "OrderValues.exe?" + FileName + "+dummy+1000";
          W1 = "+PDP,,MW80,d+PDP,,MW81,d+PDP,,MW82,d";
          W2 = "+PDP,,MW83,d+PDP,,MW84,d+PDP,,MW85,d";
          W3 = "+PDP,,MW86,d+PDP,,MW87,d+PDP,,MW88,d";
          HttpWebReq(Pref + CGIorder + W1 + W2 + W3);
        }

        //http://blogs.msdn.com/silverlight_sdk/archive/2008/04/01/using-webclient-and-httpwebrequest.aspx
        //http://msdn.microsoft.com/en-us/library/dd920295%28VS.95%29.aspx
        private void HttpWebReq(string URL)
        {
          try
          {
            HttpWebRequest req = (HttpWebRequest)WebRequest.
                                                 Create(new Uri(URL));
            req.Method = "GET";
            req.BeginGetResponse(new AsyncCallback(ReadCallback), req);
          }
          catch (Exception ex)
          {
            string msg = "Error1: " + ex.Message + ";" +ex.ToString();
            ReadResult.Text = msg;
          }
        }

        private void ReadCallback(IAsyncResult a)
        {
          try
          {
            HttpWebRequest req = (HttpWebRequest)a.AsyncState;
            HttpWebResponse res = (HttpWebResponse)req.
                                                EndGetResponse(a);

            Stream strm = res.GetResponseStream();
            StreamReader streamReader1 = new StreamReader(strm);
            string resultString = streamReader1.ReadToEnd();
            ReadResult.Text = "CB response:" + resultString;
            streamReader1.Close();
          }
          catch (Exception ex)
          {
            string msg = "Error2: " + ex.Message + ";" +ex.ToString();
            ReadResult.Text = msg;
          }
        }

/*                //XDocument doc = XDocument.Parse(resultString);

                ReadResult.Text = "CB response:" + resultString;
                streamReader1.Close();


                using (StreamReader streamReader1 = new StreamReader(res.GetResponseStream()))
                {
                    string resultString = streamReader1.ReadToEnd();
                    ReadResult.Text = "CB response:" + resultString;
                }
*/


    }
}
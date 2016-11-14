﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.IO;

public partial class Manage_manage_seeVideo : System.Web.UI.Page
{
    public string VUrl;
    public string VideoTitle;
    public string Content;
    public string Name;
    public string FBDate;
    public string ClickSum;
    dataOperate mydo = new dataOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        seeVi();
    }

    //观看视频
    protected void seeVi()
    {
        try
        {
            string sql = "select * from tb_Video where VideoID=" + Convert.ToInt32(Request.QueryString["VideoID"]);
            OleDbDataReader odr = mydo.row(sql);
            odr.Read();
            VUrl = "../Video" + "\\" + odr["VideoUrl"].ToString();           
            if (!File.Exists(Server.MapPath(".") + "\\" + VUrl))
            {
                Page.RegisterStartupScript("true", "<script>alert('文件不存在！请返回！')</script>");
            }
            VideoTitle = odr["VideoName"].ToString();
            Content = odr["VideoContent"].ToString();
            Name = odr["Name"].ToString();
            FBDate = odr["FBDate"].ToString();
            ClickSum = odr["ClickSum"].ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        string spokesman;
        spokesman = "校长";     
        string speakContent = this.TextBox2.Text;
        string tutorialType = "Video";
        string tutorialID = Request.QueryString["VideoID"];
        string insertSql = "insert into tb_Speak([Spokesman],[TutorialType],[TutorialID],[SpeakContent]) values('" + spokesman + "','" + tutorialType + "'," + tutorialID + ",'" + speakContent + "')";
        bool bo = mydo.adlData(insertSql);
            if (bo)
            {
               Page.RegisterStartupScript("true", "<script>alert('发言成功！');localhost=seeVideo.aspx</script>");

            }
            else
            {
                Page.RegisterStartupScript("false", "<script>alert('发言失败！')</script>");
            }
        }   

 }
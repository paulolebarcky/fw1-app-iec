<%@page contentType="text/html"%>
<%@taglib uri="http://cewolf.sourceforge.net/taglib/cewolf.tld" prefix="cewolf" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*"%>
<%@page import="de.laures.cewolf.*"%>
<%@page import="de.laures.cewolf.cpp.*"%>
<%@page import="de.laures.cewolf.example.*"%>
<%@page import="de.laures.cewolf.links.*"%>
<%@page import="de.laures.cewolf.taglib.CewolfChartFactory" %>
<%@page import="de.laures.cewolf.tooltips.*"%>
<%@page import="org.jfree.chart.*"%>
<%@page import="org.jfree.chart.event.ChartProgressEvent" %>
<%@page import="org.jfree.chart.event.ChartProgressListener" %>
<%@page import="org.jfree.chart.plot.*"%>
<%@page import="org.jfree.data.*"%>
<%@page import="org.jfree.data.category.*"%>
<%@page import="org.jfree.data.gantt.*"%>
<%@page import="org.jfree.data.general.*"%>
<%@page import="org.jfree.data.time.*"%>
<%@page import="org.jfree.data.xy.*"%>
<%
    if (pageContext.getAttribute("initFlag") == null) {

        DatasetProducer pieData = new DatasetProducer() {
            public Object produceDataset(Map params) {
                final String[] categories = {"Até 30%", "De 40 à 60%", "Maior que 60%"};
                DefaultPieDataset ds = new DefaultPieDataset();
                for (int i = 0; i < categories.length; i++) {
                    int y = (int) (Math.random() * 10 + 1);
                    ds.setValue(categories[i], new Integer(y));
                }
                return ds;
            }

            public String getProducerId() {
                return "PieDataProducer";
            }

            public boolean hasExpired(Map params, Date since) {
                return false;
            }
        };
        pageContext.setAttribute("pieData", pieData);

        PieToolTipGenerator pieTG = new PieToolTipGenerator() {
            public String generateToolTip(PieDataset dataset, Comparable section, int index) {
                return String.valueOf(index);
            }
        };
        pageContext.setAttribute("pieToolTipGenerator", pieTG);

        pageContext.setAttribute("initFlag", "init");
    }
%>
<jsp:useBean id="seriesPaint" class="de.laures.cewolf.cpp.SeriesPaintProcessor" />

<jsp:useBean id="barRenderer" class="de.laures.cewolf.cpp.BarRendererProcessor" />

<jsp:useBean id="pieEnhancer" class="de.laures.cewolf.cpp.PieEnhancer" />

<html>
    <head>
        <link href="cewolf.css" rel="stylesheet" type="text/css"></head>
    <BODY bgcolor="#DDE8F2">
        <H1>Gráficos</H1>
        <p>
        <table style="margin-top: 120px;margin-left: 40%;" border="0">
            <TR>
                <TD>
                    <cewolf:chart id="pieChart" title="Percentual de produtos com desconto" type="pie">
                        <cewolf:gradientpaint>
                            <cewolf:point x="0" y="0" color="#FFFFFF" />
                            <cewolf:point x="300" y="0" color="#DDDDFF" />
                        </cewolf:gradientpaint>
                        <cewolf:data>
                            <cewolf:producer id="pieData" />
                        </cewolf:data>
                        <cewolf:chartpostprocessor id="seriesPaint">
                            <cewolf:param name="0" value="#FFFFAA"/>
                            <cewolf:param name="1" value="#AAFFAA"/>
                            <cewolf:param name="2" value="#FFAAFF"/>

                        </cewolf:chartpostprocessor>
                        <cewolf:chartpostprocessor id="pieEnhancer">
                            <cewolf:param name="interiorGap" value="0.05"/>
                            <cewolf:param name="labelGap" value="0.05"/>
                            <cewolf:param name="startAngle" value="90"/>
                            <cewolf:param name="simpleLabels" value="false"/>
                            <cewolf:param name="showSectionLabels" value="true"/>
                            <cewolf:param name="showShadow" value="false"/>
                            <cewolf:param name="explode_0.25" value="apples"/>
                            <cewolf:param name="explode_0.26" value="bananas"/>
                        </cewolf:chartpostprocessor>
                    </cewolf:chart>
                    <cewolf:img chartid="pieChart" renderer="/cewolf" width="400" height="400"/>
                </TD>
                <TD>
                </TD>
            </TR>           
            <tr>
                <td colspan="2" style="padding-top: 30px;"><a href="menu.jsp" >Voltar</a></td>
            </tr>
        </TABLE>
    </body>
</html>

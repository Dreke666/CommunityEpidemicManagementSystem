package com.Drake.SSM_sys.bean;


public class Report {

  private int reportid;
  private String comefromidlevel;
  private String traffic;
  private String temperature;
  private String acidresults;
  private String quarantinelocation;
  private String quarantinedays;
  private String finalacidresults;
  private String username;

  public Report() {
  }

  public Report(int reportid, String comefromidlevel, String traffic, String temperature, String acidresults, String quarantinelocation, String quarantinedays, String finalacidresults, String username) {
    this.reportid = reportid;
    this.comefromidlevel = comefromidlevel;
    this.traffic = traffic;
    this.temperature = temperature;
    this.acidresults = acidresults;
    this.quarantinelocation = quarantinelocation;
    this.quarantinedays = quarantinedays;
    this.finalacidresults = finalacidresults;
    this.username = username;
  }

  public int getReportid() {
    return reportid;
  }

  public void setReportid(int reportid) {
    this.reportid = reportid;
  }

  public String getComefromidlevel() {
    return comefromidlevel;
  }

  public void setComefromidlevel(String comefromidlevel) {
    this.comefromidlevel = comefromidlevel;
  }

  public String getTraffic() {
    return traffic;
  }

  public void setTraffic(String traffic) {
    this.traffic = traffic;
  }

  public String getTemperature() {
    return temperature;
  }

  public void setTemperature(String temperature) {
    this.temperature = temperature;
  }

  public String getAcidresults() {
    return acidresults;
  }

  public void setAcidresults(String acidresults) {
    this.acidresults = acidresults;
  }

  public String getQuarantinelocation() {
    return quarantinelocation;
  }

  public void setQuarantinelocation(String quarantinelocation) {
    this.quarantinelocation = quarantinelocation;
  }

  public String getQuarantinedays() {
    return quarantinedays;
  }

  public void setQuarantinedays(String quarantinedays) {
    this.quarantinedays = quarantinedays;
  }

  public String getFinalacidresults() {
    return finalacidresults;
  }

  public void setFinalacidresults(String finalacidresults) {
    this.finalacidresults = finalacidresults;
  }

  public String getusername() {
    return username;
  }

  public void setusername(String username) {
    this.username = username;
  }

  @Override
  public String toString() {
    return "Report{" +
            "reportid=" + reportid +
            ", comefromidlevel='" + comefromidlevel + '\'' +
            ", traffic='" + traffic + '\'' +
            ", temperature='" + temperature + '\'' +
            ", acidresults='" + acidresults + '\'' +
            ", quarantinelocation='" + quarantinelocation + '\'' +
            ", quarantinedays=" + quarantinedays +
            ", finalacidresults='" + finalacidresults + '\'' +
            ", username=" + username +
            '}';
  }
}

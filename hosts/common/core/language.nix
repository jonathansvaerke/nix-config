{
  time.timeZone = "Europe/Copenhagen";
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_TIME = "en_DK.UTF-8"; # ISO 8601 time format (24h, Monday-first week)
      LC_NUMERIC = "en_US.UTF-8"; # Decimal point format
    };
  };
}

namespace CafeShop.Common
{
    public static class Config
    {
        public static string Connection()
        {
            string conn = "Data Source=DESKTOP-CCEOE8N;Initial Catalog=cafe;User ID=dthg;Password=abc123;Trust Server Certificate=True";
            return conn;
        }

        public static string ImageUrl()
        {
            string imageUrl = @"https://localhost:44368/images/";
            return imageUrl;
        }

    }
}

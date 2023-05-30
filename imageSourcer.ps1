# set your Unsplash API access key
$accessKey = "[YOUT UNSPLASH ACCESS KEY]]"

# parameters for filtering the images
$query = "[I.E. 'nature']"
$orientation = "landscape" # landscape, portrait, squarish (optional, but i reccomend landscape)

# full API endpoint for random photos
$endpoint = "https://api.unsplash.com/photos/random?query=$query&orientation=$orientation"

# create a header with the access key
$headers = @{
    "Accept-Version" = "v1"
    "Authorization" = "Client-ID $accessKey"
}

# make a GET request to the API endpoint
$response = Invoke-RestMethod -Uri $endpoint -Headers $headers

# extract the image URL from the response
$imageUrl = $response.urls.raw # raw, full, regular, small, thumb (raw is the highest quality)

# download the image using the URL
$outputPath = "C:\Users\User\Folder\image.png" # change this to your desired output path
Invoke-WebRequest -Uri $imageUrl -OutFile $outputPath

# set the downloaded image as the wallpaper for the home screen
Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class WallpaperSetter
{
    [DllImport("user32.dll", CharSet = CharSet.Auto)]
    public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);

    public static void SetWallpaper(string imagePath)
    {
        const int SPI_SETDESKWALLPAPER = 0x0014;
        const int SPIF_UPDATEINIFILE = 0x01;
        const int SPIF_SENDCHANGE = 0x02;

        SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, imagePath, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE);
    }
}
"@

[WallpaperSetter]::SetWallpaper($outputPath)

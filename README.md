# PowerShell FFmpeg Scrips

Utilities/extension scripts I use with ffmpeg. Helpful for folks using Windows machines. 


Download from the [official website](https://ffmpeg.org/download.html) or use chocolatey with `choco install ffmpeg` 

# Scripts
| Name | Purpose | Usage |
|------|---------|-------|
| ToGif.ps1 | Converts .mp4 to .gif | ` .\ToGif.ps1 .\test-files\cat-video.mp4` |

# Sidenotes
I put the functions in my PowerShell profile `Microsoft.PowerShell_profile.ps1`.

```ps
Function ToGif {
    # Body of function...
}
```

So I can use it as
```ps
>   togif input.mp4
```
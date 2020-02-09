.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;
.super Ljava/lang/Object;
.source "KeyguardVideoWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifParameters"
.end annotation


# instance fields
.field height:I

.field inputFileName:Ljava/lang/String;

.field inputUri:Landroid/net/Uri;

.field outFileName:Ljava/lang/String;

.field width:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->width:I

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->height:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->outFileName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->inputFileName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->inputUri:Landroid/net/Uri;

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->width:I

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->height:I

    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->outFileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->inputFileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->inputUri:Landroid/net/Uri;

    return-void
.end method

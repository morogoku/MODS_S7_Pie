.class public final synthetic Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$pPaP84TW0-o-NLn3WWasJIBV6ZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

.field private final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$pPaP84TW0-o-NLn3WWasJIBV6ZM;->f$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$pPaP84TW0-o-NLn3WWasJIBV6ZM;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$pPaP84TW0-o-NLn3WWasJIBV6ZM;->f$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$pPaP84TW0-o-NLn3WWasJIBV6ZM;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->lambda$updateAdaptiveColors$0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Landroid/graphics/Bitmap;)V

    return-void
.end method

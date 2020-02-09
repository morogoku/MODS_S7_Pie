.class synthetic Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$4;
.super Ljava/lang/Object;
.source "KeyguardVideoWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$wallpaper$KeyguardVideoWallpaper$ScreenState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->values()[Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$4;->$SwitchMap$com$android$systemui$wallpaper$KeyguardVideoWallpaper$ScreenState:[I

    :try_start_0
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$4;->$SwitchMap$com$android$systemui$wallpaper$KeyguardVideoWallpaper$ScreenState:[I

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$4;->$SwitchMap$com$android$systemui$wallpaper$KeyguardVideoWallpaper$ScreenState:[I

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->BLACK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$4;->$SwitchMap$com$android$systemui$wallpaper$KeyguardVideoWallpaper$ScreenState:[I

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method

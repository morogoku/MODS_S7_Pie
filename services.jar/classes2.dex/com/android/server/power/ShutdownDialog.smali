.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$RunningCheckable;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# static fields
.field private static final BLUE:I = 0x6

.field private static final BUFFER_SIZE:I = 0x3

.field private static final GOLD:I = 0x3

.field private static final GREEN:I = 0x5

.field private static final LAVENDER:I = 0x8

.field private static final MSG_LOAD_FINISH:I = -0x1

.field private static final MSG_UPDATE_DELAY:I = 0x64

.field private static final MSG_UPDATE_FRAME:I = 0x0

.field private static final PATH_B2BSHUTDOWNPATH:Ljava/lang/String; = "//data/b2b/ShutdownFileInfo.txt"

.field private static final PATH_OLD_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_PST_IMG:Ljava/lang/String; = "//system/PST/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/PowerOff.ogg"

.field private static final PATH_SHUTDOWNSOUND_SKU_OGG:Ljava/lang/String; = "/media/audio/ui/PowerOff.ogg"

.field private static final PATH_SHUTDOWNSOUND_SKU_WAV:Ljava/lang/String; = "/media/audio/ui/PowerOff.wav"

.field private static final PATH_SHUTDOWN_AFTER:Ljava/lang/String; = "//system/media/shutdownafter.qmg"

.field private static final PATH_SHUTDOWN_BEFORE:Ljava/lang/String; = "//system/media/shutdownbefore.qmg"

.field private static final PATH_SHUTDOWN_LOOP:Ljava/lang/String; = "//system/media/shutdownloop.qmg"

.field private static final PATH_SHUTDOWN_SKU:Ljava/lang/String; = "/media/video/shutdown/"

.field private static final PINKGOLD:I = 0x7

.field private static final PROPERTY_SHUTDOWN_SKU:Ljava/lang/String; = "persist.sys.omc_respath"

.field private static final SILVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"

.field private static final WHITE:I = 0x2


# instance fields
.field private PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

.field private PATH_SHUTDOWNING_PREFIX:Ljava/lang/String;

.field private SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

.field private SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

.field private final WINDOWTYPE_OFFSET:I

.field private b2bAnimPath:Ljava/lang/String;

.field private b2bSoundPath:Ljava/lang/String;

.field private final bitmapQ:[Landroid/graphics/Bitmap;

.field private bitmapQFront:I

.field private bitmapQRear:I

.field final chameleonCode:Ljava/lang/String;

.field final chameleonFile:Ljava/lang/String;

.field final chameleonFileExist:Z

.field private doLoopAnim:Z

.field private final drawBufferLock:Ljava/lang/Object;

.field private final logHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private final mLogString:Ljava/lang/StringBuffer;

.field private mLogView:Landroid/widget/TextView;

.field private mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field private final mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field private final mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field private mp:Landroid/media/MediaPlayer;

.field private final qmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private silentShutdown:Z

.field private final supportChameleon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "//system/media/shutdown_"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNING_PREFIX:Ljava/lang/String;

    const-string v0, ".qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    const-string v0, "/sys/class/lcd/panel/window_type"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/power/ShutdownDialog;->WINDOWTYPE_OFFSET:I

    const-string/jumbo v0, "shutdownbefore.qmg"

    const-string/jumbo v1, "shutdown.qmg"

    const-string/jumbo v2, "shutdownafter.qmg"

    const-string/jumbo v3, "shutdownloop.qmg"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    const-string v0, "/carrier/chameleon.xml"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFile:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_UseChameleon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/carrier/chameleon.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFileExist:Z

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/android/server/power/ShutdownDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$1;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    new-instance v0, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    const-string v1, "//data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getBtoBShutdownPath()V

    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B2B sound : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B2B img : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    invoke-virtual {p0, v2}, Lcom/android/server/power/ShutdownDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x46a0580

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.feature.cocktailbar"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_104

    const/16 v3, 0x8ae

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_108

    :cond_104
    const/16 v3, 0x7e5

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_108
    const/4 v3, 0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/ShutdownDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    new-instance v1, Lcom/android/server/power/LibQmg;

    invoke-direct {v1, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_5
    if-ge v0, v1, :cond_28

    aget-object v4, p2, v0

    if-nez v3, :cond_23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_23

    :cond_21
    move v5, v2

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v5, 0x1

    :goto_24
    move v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_28
    return v3
.end method

.method private createShutdownQmgPlayList()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "//system/media/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "_shutdown.qmg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    return-void

    :cond_26
    const-string v0, "//system/PST/shutdown.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return-void

    :cond_2f
    const-string v0, "//system/csc_contents/shutdown.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    return-void

    :cond_38
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    return-void

    :cond_45
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->readColorId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->getQmgCodeById(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.omc_respath"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_100

    iget-boolean v3, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v3, :cond_100

    :cond_5e
    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8f

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ShutdownDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@Power off sound CHAMELEON - update animation path to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    if-eqz v1, :cond_e6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shutdown_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/media/video/shutdown/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_e6

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/media/video/shutdown/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e6

    return-void

    :cond_e6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/media/video/shutdown/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    return-void

    :cond_100
    const-string v3, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_109

    return-void

    :cond_109
    if-eqz v1, :cond_13a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNING_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_13a

    const-string v4, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v4}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    const-string v4, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v4}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    return-void

    :cond_13a
    new-instance v3, Ljava/io/File;

    const-string v4, "//system/media/shutdown.qmg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_157

    const-string v3, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    const-string v3, "//system/media/shutdown.qmg"

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    const-string v3, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    return-void

    :cond_157
    const-string v3, "//system/media/shutdownloop.qmg"

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_160

    return-void

    :cond_160
    return-void
.end method

.method private getBtoBShutdownPath()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "//data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1a} :catch_30
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_26
    .catchall {:try_start_1 .. :try_end_1a} :catchall_24

    nop

    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    :goto_1e
    goto :goto_3a

    :catch_1f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    :catchall_24
    move-exception v1

    goto :goto_3b

    :catch_26
    move-exception v1

    :try_start_27
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    if-eqz v0, :cond_3a

    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_1f

    goto :goto_1e

    :catch_30
    move-exception v1

    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_24

    if-eqz v0, :cond_3a

    :try_start_36
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_1f

    goto :goto_1e

    :cond_3a
    :goto_3a
    return-void

    :goto_3b
    if-eqz v0, :cond_45

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_45
    :goto_45
    throw v1
.end method

.method private getChameleonCode()Ljava/lang/String;
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFileExist:Z

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->isCarrierActivated()Z

    move-result v0

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    const-string v0, "/carrier/chameleon.xml"

    const-string v1, "Operators.AndroidOperatorNetworkCode"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@Power off sound CHAMELEON network code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_35

    const-string v1, "310000"

    goto :goto_36

    :cond_35
    move-object v1, v0

    :goto_36
    move-object v0, v1

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x59d0375d

    if-eq v2, v3, :cond_60

    const v3, 0x59d0b7d8

    if-eq v2, v3, :cond_56

    const v3, 0x59d0c69e

    if-eq v2, v3, :cond_4c

    goto :goto_69

    :cond_4c
    const-string v2, "311870"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v1, 0x2

    goto :goto_69

    :cond_56
    const-string v2, "311490"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v1, 0x1

    goto :goto_69

    :cond_60
    const-string v2, "310120"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v1, 0x0

    :cond_69
    :goto_69
    packed-switch v1, :pswitch_data_90

    const-string v1, "XAS"

    goto :goto_78

    :pswitch_6f
    const-string v1, "BST"

    goto :goto_78

    :pswitch_72
    const-string v1, "VMU"

    goto :goto_78

    :pswitch_75
    const-string v1, "SPR"

    nop

    :goto_78
    nop

    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@Power off sound CHAMELEON is activated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_75
        :pswitch_72
        :pswitch_6f
    .end packed-switch
.end method

.method public static getElement(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_9
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1d

    return-object v4

    :cond_1c
    goto :goto_25

    :catch_1d
    move-exception v2

    const-string v3, "ShutdownDialog"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    const/4 v2, 0x0

    return-object v2
.end method

.method private getQmgCodeById(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    return-object v0

    :cond_11
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_32

    goto :goto_30

    :pswitch_16
    const-string/jumbo v3, "ro.color.pinkgold"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :pswitch_1e
    const-string/jumbo v3, "ro.color.blue"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :pswitch_26
    const-string/jumbo v3, "ro.color.green"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :pswitch_2e
    const-string v0, "WH"

    :goto_30
    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_26
        :pswitch_1e
        :pswitch_16
        :pswitch_2e
    .end packed-switch
.end method

.method private getShutdownSoundPath()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    return-object v0

    :cond_14
    const-string/jumbo v0, "persist.sys.omc_respath"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/media/audio/ui/PowerOff.ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/media/audio/ui/PowerOff.ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4b
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/media/audio/ui/PowerOff.wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/media/audio/ui/PowerOff.wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_79
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v1, :cond_a3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/system/media/audio/ui/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/PowerOff.ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_a3
    new-instance v1, Ljava/io/File;

    const-string v2, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b3

    const-string v1, "//system/csc_contents/PowerOff.ogg"

    return-object v1

    :cond_b3
    const-string v1, "//system/media/audio/ui/PowerOff.wav"

    new-instance v2, Ljava/io/File;

    const-string v3, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c5

    const-string v2, "//system/media/audio/ui/PowerOff.wav"

    return-object v2

    :cond_c5
    const-string v2, "//system/media/audio/ui/PowerOff.ogg"

    new-instance v3, Ljava/io/File;

    const-string v4, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d7

    const-string v3, "//system/media/audio/ui/PowerOff.ogg"

    return-object v3

    :cond_d7
    const/4 v3, 0x0

    return-object v3
.end method

.method private getSystemVolume()I
    .registers 8

    const/16 v0, -0x270f

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    const-string/jumbo v3, "shutdown"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    :cond_1b
    const-string v3, "ShutdownDialog"

    const-string v4, "!@systemVol:%d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isCarrierActivated()Z
    .registers 3

    const-string v0, "/carrier/chameleon.xml"

    const-string v1, "Operators.SubscriberCarrierId"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    return v1

    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method private prepareSound(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_10
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v4

    invoke-virtual {v3, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_38} :catch_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_38} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_38} :catch_4a
    .catchall {:try_start_10 .. :try_end_38} :catchall_48

    nop

    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_47

    :catch_3d
    move-exception v3

    const-string v4, "ShutdownDialog"

    const-string/jumbo v5, "sound file.close"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74

    :cond_47
    :goto_47
    goto :goto_74

    :catchall_48
    move-exception v3

    goto :goto_75

    :catch_4a
    move-exception v3

    :try_start_4b
    const-string v4, "ShutdownDialog"

    const-string v5, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_48

    if-eqz v1, :cond_47

    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_3d

    goto :goto_47

    :catch_58
    move-exception v3

    :try_start_59
    const-string v4, "ShutdownDialog"

    const-string v5, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_48

    if-eqz v1, :cond_47

    :try_start_62
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_3d

    goto :goto_47

    :catch_66
    move-exception v3

    :try_start_67
    const-string v4, "ShutdownDialog"

    const-string v5, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_48

    if-eqz v1, :cond_47

    :try_start_70
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_3d

    goto :goto_47

    :goto_74
    return-void

    :goto_75
    nop

    if-eqz v1, :cond_86

    :try_start_78
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_86

    :catch_7c
    move-exception v4

    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "sound file.close"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_86
    :goto_86
    throw v3
.end method

.method private readColorId()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->readWindowType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    :cond_23
    return v0
.end method

.method private readWindowType()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    :goto_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_36
    .catchall {:try_start_7 .. :try_end_23} :catchall_34

    goto :goto_14

    :cond_24
    nop

    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    :goto_28
    goto :goto_46

    :catch_29
    move-exception v3

    const-string v4, "ShutdownDialog"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :catchall_34
    move-exception v3

    goto :goto_4f

    :catch_36
    move-exception v3

    :try_start_37
    const-string v4, "ShutdownDialog"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_34

    if-eqz v2, :cond_46

    :try_start_42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_29

    goto :goto_28

    :cond_46
    :goto_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :goto_4f
    if-eqz v2, :cond_5f

    :try_start_51
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_5f

    :catch_55
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ShutdownDialog"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_5f
    throw v3
.end method

.method public static search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->getElement(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    if-nez v0, :cond_a

    goto :goto_2f

    :cond_a
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/ShutdownDialog;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_22

    return-object v1

    :cond_22
    goto :goto_11

    :cond_23
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_2a

    return-object v1

    :cond_2a
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2f
    :goto_2f
    return-object v1
.end method

.method public static search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_23

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    return-object v4

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_23
    return-object v0
.end method


# virtual methods
.method public appendTextLog(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ShutdownDialog"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public drawState()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkStart()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x12c

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public existAnim()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public hasSound()Z
    .registers 4

    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has sound for power off : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    # getter for: Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z
    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$2300(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    # getter for: Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$2300(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x11

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    const v3, -0xff0001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public prepareShutdown()V
    .registers 3

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_13

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    return-void
.end method

.method public setSilentShutdown(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    return-void
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    return-void
.end method

.method public waitForAnimEnd(I)Z
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :goto_9
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v2}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkRunning()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_25

    const-string v4, "ShutdownDialog"

    const-string v5, "!@Animation finish wait timed out"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_25
    const-string v4, "ShutdownDialog"

    const-string/jumbo v5, "wait for finish : sleep 100ms"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x64

    :try_start_2f
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_3b

    :catch_33
    move-exception v4

    const-string v5, "ShutdownDialog"

    const-string v6, "InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    goto :goto_9

    :cond_3c
    :goto_3c
    const/4 v2, 0x1

    return v2
.end method

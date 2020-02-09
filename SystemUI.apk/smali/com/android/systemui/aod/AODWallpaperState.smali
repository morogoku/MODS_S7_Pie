.class public Lcom/android/systemui/aod/AODWallpaperState;
.super Ljava/lang/Object;
.source "AODWallpaperState.java"

# interfaces
.implements Lcom/android/systemui/aod/AODMachine$Part;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mIsAmbientMode:Z

.field private mKeyguardVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AODWallpaperState"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/aod/AODWallpaperState;->DEBUG:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/aod/AODWallpaperState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/aod/AODWallpaperState;->mKeyguardVisible:Z

    return p1
.end method


# virtual methods
.method public transitionTo(Lcom/android/systemui/aod/AODMachine$AODState;Lcom/android/systemui/aod/AODMachine$AODState;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/aod/AODWallpaperState$2;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    invoke-virtual {p2}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    nop

    :goto_0
    nop

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/aod/AODWallpaperState;->mIsAmbientMode:Z

    if-eq v0, v2, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/aod/AODWallpaperState;->mIsAmbientMode:Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

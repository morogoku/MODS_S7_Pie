.class public Lcom/android/keyguard/punchhole/VIDirectorA50;
.super Lcom/android/keyguard/punchhole/VIDirector;
.source "VIDirectorA50.java"


# instance fields
.field private mCameraLocPercent:Landroid/graphics/PointF;

.field private mFaceVISizePercent:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3cb295ea    # 0.0218f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/punchhole/VIDirectorA50;->mCameraLocPercent:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3e212d77    # 0.1574f

    const v2, 0x3d3295ea    # 0.0436f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/punchhole/VIDirectorA50;->mFaceVISizePercent:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getCameraAffordanceVIFileName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCameraAffordanceVISizeRatio()Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCameraLocationRatio()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirectorA50;->mCameraLocPercent:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getFaceRecognitionVIFileName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ucut_punch_cut_invert.json"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "ucut_punch_cut.json"

    :goto_0
    return-object v1
.end method

.method protected getFaceRecognitionVISizeRatio()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirectorA50;->mFaceVISizePercent:Landroid/graphics/PointF;

    return-object v0
.end method

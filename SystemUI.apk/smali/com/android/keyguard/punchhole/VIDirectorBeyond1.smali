.class public Lcom/android/keyguard/punchhole/VIDirectorBeyond1;
.super Lcom/android/keyguard/punchhole/VIDirector;
.source "VIDirectorBeyond1.java"


# instance fields
.field private mCameraLocPercent:Landroid/graphics/PointF;

.field private mFaceVISizePercent:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3f662b6b    # 0.8991f

    const v2, 0x3cf9096c    # 0.0304f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/punchhole/VIDirectorBeyond1;->mCameraLocPercent:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3de76c8b    # 0.113f

    const v2, 0x3d7487fd    # 0.0597f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/punchhole/VIDirectorBeyond1;->mFaceVISizePercent:Landroid/graphics/PointF;

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

    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirectorBeyond1;->mCameraLocPercent:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getFaceRecognitionVIFileName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "face_unlocking_cutout_ic_whitebg_b1.json"

    goto :goto_0

    :cond_0
    const-string v1, "face_unlocking_cutout_ic_b1.json"

    :goto_0
    return-object v1
.end method

.method protected getFaceRecognitionVISizeRatio()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirectorBeyond1;->mFaceVISizePercent:Landroid/graphics/PointF;

    return-object v0
.end method

.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mTickerAddSpace:Z


# instance fields
.field private currentUserHandle:Landroid/os/UserHandle;

.field mAm:Landroid/app/IActivityManager;

.field private mBixbyCaptureSharedActivityName:Ljava/lang/String;

.field private mBixbyCaptureSharedPackageName:Ljava/lang/String;

.field private mCaptureSharedBundle:Landroid/os/Bundle;

.field private mCapturedDisplay:I

.field private mCapturedOrigin:I

.field private mCapturedType:I

.field private mDisplayNotiIcon:Z

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mImageDisplayName:Ljava/lang/String;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mIsBixbyCaptureShared:Z

.field private mIsFormatPNG:Z

.field private mIsSavingFailed:Z

.field private mIsScrollCaptureConnectionListenerInvoked:Z

.field private mNavigationBarHeight:I

.field private mNavigationBarVisible:Z

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private mRotation:I

.field private mSafeInsetBottom:I

.field private mSafeInsetLeft:I

.field private mSafeInsetRight:I

.field private mSafeInsetTop:I

.field private mScreenCaptureTime:Ljava/lang/String;

.field private final mScreenshotDir:Ljava/io/File;

.field private mScrollCaptureAvailable:Z

.field private mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

.field private mScrollCaptureTransactionId:J

.field private mStatusBarHeight:I

.field private mStatusBarVisible:Z

.field private mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsFormatPNG:Z

    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    const/4 v11, 0x0

    iput-object v11, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedPackageName:Ljava/lang/String;

    iput-object v11, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedActivityName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v13

    const-string v0, "2.0"

    const-string/jumbo v1, "version"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persona"

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageFilePath:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isFormatPNG(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsFormatPNG:Z

    iget-boolean v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsFormatPNG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    goto :goto_1

    :goto_2
    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    iget-wide v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->getFormattedCurrentTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Screenshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    iget-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFormatPNG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsFormatPNG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    iget v14, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    iget v15, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    iget v6, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    iget v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedOrigin:I

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    iget v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedType:I

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedType:I

    iget v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetLeft:I

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetLeft:I

    iget v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetTop:I

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetTop:I

    iget v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetRight:I

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetRight:I

    iget v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetBottom:I

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetBottom:I

    iget v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedDisplay:I

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedDisplay:I

    iget v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->rotation:I

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRotation:I

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->webData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    iget-boolean v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->statusBarVisible:Z

    iput-boolean v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarVisible:Z

    iget-boolean v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->navigationBarVisible:Z

    iput-boolean v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarVisible:Z

    iget v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->statusBarHeight:I

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarHeight:I

    iget v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->navigationBarHeight:I

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarHeight:I

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->captureSharedBundle:Landroid/os/Bundle;

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCaptureSharedBundle:Landroid/os/Bundle;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v5, v0

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    move-object v4, v0

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {v4, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v0

    const/high16 v16, 0x4c000000    # 3.3554432E7f

    iget v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v0, v15, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    sub-int v1, v6, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preview = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ], matrix = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object v0, v7

    move v2, v15

    move-object/from16 v17, v3

    move v3, v6

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    move-object/from16 v19, v5

    move/from16 v20, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v6

    int-to-float v0, v14

    iget v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iget v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v5, v0, v1

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v0, v14

    iget v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, v14

    iget v3, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object v0, v7

    move v2, v14

    move v3, v14

    move/from16 v21, v5

    move-object/from16 v5, v19

    move-object v11, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCaptureSharedBundle:Landroid/os/Bundle;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iput-boolean v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCaptureSharedBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "params"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "packageName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedPackageName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v5, "activityName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedActivityName:Ljava/lang/String;

    :cond_5
    :goto_4
    goto :goto_3

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isPackageAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    iget-boolean v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-direct {v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    new-instance v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    invoke-direct {v5, v7, v3, v4, v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;-><init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;JLandroid/content/Context;)V

    invoke-virtual {v1, v8, v5}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->connect(Landroid/content/Context;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;)Z

    :cond_7
    sget-boolean v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    move-object/from16 v1, p3

    iput-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v5

    iput-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    invoke-direct {v5, v8, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x7f120b37

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v10, 0x7f120b35

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x7f080630

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string/jumbo v6, "progress"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1060204

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iput-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v5, v2}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v10, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    invoke-direct {v5, v8, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v10, 0x7f120b37

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v10, 0x7f120b35

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v10, 0x7f080630

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v5

    iput-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v5, v2}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    iget-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetRight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarVisible:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarVisible:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRotation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedType:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedDisplay:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetLeft:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetTop:I

    return v0
.end method

.method private broadcastForLoggingApp(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCapturedOrigin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mImageFilePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mScreenCpatureTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.scapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "time"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v1, p1, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private isComponentAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    return v1

    :cond_0
    return v1
.end method

.method private isEditorAvailable(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "com.dama.paperartist"

    const-string v1, "com.dama.paperartist.PaperArtistActivity"

    const-string v2, "com.sec.android.mimage.photoretouching"

    const-string v3, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    const-string v4, "air.com.adobe.pstouch.oem1"

    const-string v5, "air.com.adobe.pstouch.oem1.AppEntry"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-direct {p0, p1, v9}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x1

    return v7

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return v7
.end method

.method private isFormatPNG(Landroid/content/Context;)Z
    .locals 11

    const-string v0, "com.samsung.android.app.captureplugin"

    invoke-static {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".capture_format_png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2

    :cond_0
    const-string v1, "content://com.samsung.android.app.captureplugin.capturepluginprovider"

    const-string v2, "isFormatPNG"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v4, v6

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    move v3, v6

    sget-object v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFormatPNG isFileFormatPNG : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v4, :cond_3

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_1
    sget-object v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFormatPNG Exception e : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v3

    :goto_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v5
.end method

.method private isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private startChooserActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startChooserActivity packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", activityName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imageUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0xb080001

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "image/jpeg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string v3, "doInBackground"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    array-length v0, v2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "params.length is wrong"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v5, 0x0

    aget-object v0, v2, v5

    iget-object v6, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    aget-object v0, v2, v5

    iget-object v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x0

    move-object v10, v3

    const-wide/16 v11, 0x3e8

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-wide v13, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    div-long/2addr v13, v11

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mImageFilePath : "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    if-eqz v7, :cond_3

    :try_start_1
    iget-boolean v15, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsFormatPNG:Z

    const/16 v3, 0x64

    if-eqz v15, :cond_2

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v15, v3, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    :cond_2
    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v15, v3, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v4, v6

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v4, v6

    goto/16 :goto_6

    :cond_3
    :goto_0
    :try_start_2
    sget-object v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isImageCompressed : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_f

    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    move-object v3, v10

    check-cast v3, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    sget-object v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Encoding finished : FileSize : "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v6

    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", Width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", duration : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v11

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v4, v16

    :try_start_4
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "_data"

    iget-object v15, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "title"

    iget-object v15, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_display_name"

    iget-object v15, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v3, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "datetaken"

    move-wide/from16 v17, v11

    iget-wide v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "date_added"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "date_modified"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "mime_type"

    const-string v11, "image/jpeg"

    invoke-virtual {v3, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "width"

    iget v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "height"

    iget v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "_size"

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    invoke-static {v3, v6}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->putWebDataToContentValues(Landroid/content/ContentValues;Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)V

    :cond_4
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_5

    sget-object v11, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "uri is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    aget-object v12, v2, v11

    const/4 v11, 0x1

    iput v11, v12, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    move/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-wide/from16 v19, v13

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_5
    sget-object v11, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "uri : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    if-nez v11, :cond_c

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    move-wide/from16 v19, v13

    iget-wide v13, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Screenshot (%s)"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v11, v14, v13

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.SEND"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v14, Lcom/android/systemui/screenshot/ScreenshotShareActivity;

    invoke-virtual {v13, v4, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v14, 0x10008000

    invoke-virtual {v13, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v15, "FilePath"

    iget-object v14, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v13, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "Uri"

    invoke-virtual {v13, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v14, "Subject"

    invoke-virtual {v13, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "NotificationId"

    const v15, 0x7f0a03a0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v14, 0x0

    iget-boolean v15, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    if-eqz v15, :cond_6

    const v15, 0x7f0807a3

    invoke-static {v8, v15}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v15

    move-object v14, v15

    :cond_6
    new-instance v15, Landroid/app/Notification$Action$Builder;

    move/from16 v21, v0

    const v0, 0x7f120af9

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v3

    const/high16 v3, 0x10000000

    move-object/from16 v23, v5

    move-object/from16 v24, v11

    const/4 v5, 0x0

    invoke-static {v4, v5, v13, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-direct {v15, v14, v0, v11}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v15}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    iget-object v5, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    const/4 v5, 0x0

    aget-object v11, v2, v5

    iget-object v5, v11, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isEditorAvailable(Landroid/content/Context;)Z

    move-result v5

    const v15, 0x7f0807a2

    if-eqz v5, :cond_8

    new-instance v5, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    const-string v5, "Uri"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "NotificationId"

    const v11, 0x7f0a03a0

    invoke-virtual {v3, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v5, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v5, 0x10008000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v5, 0x0

    iget-boolean v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    if-eqz v11, :cond_7

    invoke-static {v8, v15}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v11

    move-object v5, v11

    :cond_7
    new-instance v11, Landroid/app/Notification$Action$Builder;

    const v15, 0x7f120af6

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v0

    move-object/from16 v25, v12

    move-object/from16 v27, v13

    const/high16 v0, 0x10000000

    const/4 v12, 0x0

    invoke-static {v4, v12, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-direct {v11, v5, v15, v13}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v11}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_8
    move-object/from16 v26, v0

    move-object/from16 v25, v12

    move-object/from16 v27, v13

    invoke-static {v4}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "notification_id"

    const v5, 0x7f0a03a0

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v3, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v3, 0x0

    iget-boolean v5, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    if-eqz v5, :cond_9

    invoke-static {v8, v15}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    move-object v3, v5

    :cond_9
    new-instance v5, Landroid/app/Notification$Action$Builder;

    const v11, 0x7f120af6

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/high16 v13, 0x10000000

    invoke-static {v4, v12, v0, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-direct {v5, v3, v11, v15}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v11, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_a
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "FilePath"

    iget-object v5, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "currentUserHandle"

    iget-object v5, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-class v3, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "NotificationId"

    const v5, 0x7f0a03a0

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x0

    iget-boolean v5, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    if-eqz v5, :cond_b

    const v5, 0x7f0807a1

    invoke-static {v8, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    move-object v3, v5

    :cond_b
    new-instance v5, Landroid/app/Notification$Action$Builder;

    const v11, 0x7f120af5

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/high16 v13, 0x10000000

    invoke-static {v4, v12, v0, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-direct {v5, v3, v11, v13}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v11, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "copyPath"

    iget-object v13, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "noToast"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v4, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_c
    move/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-wide/from16 v19, v13

    :goto_2
    const/4 v3, 0x0

    aget-object v0, v2, v3

    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    :goto_3
    aget-object v0, v2, v3

    iput-object v6, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    aget-object v0, v2, v3

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "sys.iss.state"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "3rd"

    const-string/jumbo v5, "ro.release.3rd_party"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "true"

    const-string/jumbo v5, "ro.release.iss"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x40

    if-lt v3, v5, :cond_e

    :cond_d
    invoke-direct {v1, v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->broadcastForLoggingApp(Landroid/content/Context;)V

    :cond_e
    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v4, v16

    move-object v3, v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_6

    :cond_f
    move/from16 v21, v0

    move-object v4, v6

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string v3, "Fail to create capture image file"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    aget-object v0, v2, v3

    const/4 v3, 0x1

    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_10
    :goto_4
    nop

    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    goto :goto_7

    :catch_2
    move-exception v0

    move-object v3, v0

    sget-object v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string v5, "IOException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v4, v6

    move-object v3, v0

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move-object v4, v6

    :goto_6
    :try_start_6
    sget-object v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground() Exception occured : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    const/4 v3, 0x0

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    aget-object v5, v2, v3

    const/4 v3, 0x1

    iput v3, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v10, :cond_11

    :try_start_7
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :cond_11
    :goto_7
    if-eqz v7, :cond_12

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string v3, "image recycle"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    iget-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_14

    iget-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    if-eqz v0, :cond_14

    iget-object v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    monitor-enter v3

    :try_start_8
    iget-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    if-nez v0, :cond_13

    const/16 v5, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iget-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    const-wide/16 v13, 0x3e8

    invoke-virtual {v0, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_8

    :catch_5
    move-exception v0

    :try_start_a
    sget-object v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "doInBackground : Exception thrown during waiting ScrollCapture connection. e="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doInBackground : ScrollCapture connection waiting time = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    monitor-exit v3

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :cond_14
    :goto_9
    const/4 v3, 0x0

    aget-object v0, v2, v3

    return-object v0

    :catchall_4
    move-exception v0

    move-object v3, v0

    :goto_a
    if-eqz v10, :cond_15

    :try_start_b
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v5, v0

    sget-object v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_b
    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onCancelled(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 13

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute. params.result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    const v2, 0x7f120af7

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iget-wide v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->notifyGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-virtual {v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->disconnect()V

    goto/16 :goto_0

    :cond_1
    iget v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    const v3, 0x7f0a03a0

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "imageUri"

    iget-object v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "NotificationId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/screenshot/ScreenshotViewActivity;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    const v6, 0x7f120b34

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v7, 0x7f120b33

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v8, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    invoke-static {v8, v10, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v11, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const v12, 0x1060204

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v6, v10, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v6, v12}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    iget v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedActivityName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->startChooserActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_3
    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method

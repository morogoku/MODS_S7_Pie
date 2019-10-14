.class Lcom/android/server/display/MagnifierSurfaceControl$Control;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Control"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Magnifier.Control"


# instance fields
.field private final DEBUG:Z

.field private mButtonBgHeight:I

.field private mButtonBgLeftRightWidth:I

.field private mButtonBgWidth:I

.field private mButtonBottomMargin:I

.field private mButtonHeight:I

.field private mButtonIconSize:I

.field private mButtonTopMargin:I

.field private mButtonWidth:I

.field private mContext:Landroid/content/Context;

.field private mControlFxSession:Landroid/view/SurfaceSession;

.field final mControlLock:Ljava/lang/Object;

.field private mControlSurface:Landroid/view/Surface;

.field private mControlSurfaceControl:Landroid/view/SurfaceControl;

.field private mDrawableClose:Landroid/graphics/drawable/Drawable;

.field private mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

.field private mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

.field private mDrawableWindowSizeBG:Landroid/graphics/drawable/Drawable;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->DEBUG:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mShowing:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgWidth:I

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgHeight:I

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBottomMargin:I

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonTopMargin:I

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2}, Landroid/view/Surface;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlFxSession:Landroid/view/SurfaceSession;

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050153

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050154

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050159

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBottomMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050158

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonTopMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    const/4 v2, -0x2

    if-lt p3, v0, :cond_9e

    if-ge p4, v0, :cond_c8

    :cond_9e
    :try_start_9e
    const-string v3, "Magnifier.Control"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-ge p3, v0, :cond_c5

    const/4 p3, 0x1

    :cond_c5
    if-ge p4, v0, :cond_c8

    const/4 p4, 0x1

    :cond_c8
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v3, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v4, "OverlayMagnifierControl"

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const v4, -0x7ffffffc

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    const v4, 0x1e8480

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_104
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_9e .. :try_end_104} :catch_108
    .catchall {:try_start_9e .. :try_end_104} :catchall_105

    goto :goto_10c

    :catchall_105
    move-exception v0

    goto/16 :goto_328

    :catch_108
    move-exception v3

    :try_start_109
    invoke-virtual {v3}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_105

    :goto_10c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hover_zoom_magnifier_size"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_13c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    goto :goto_159

    :cond_13c
    if-ne v3, v0, :cond_14c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    goto :goto_159

    :cond_14c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    :goto_159
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "magnifier_window_horizontal_focus_lock"

    invoke-static {v4, v5, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_176

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10800c9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    goto :goto_183

    :cond_176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10800ca

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    :goto_183
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20e

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v4, p3, 0x2

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, p3, 0x2

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v4, p3, 0x2

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, p3, 0x2

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v4, p3, 0x2

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, p3, 0x2

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_28f

    :cond_20e
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v4, p3, 0x2

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, p3, 0x2

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v4, p3, 0x2

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, p3, 0x2

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v4, p3, 0x2

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, p3, 0x2

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_28f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10800cb

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSizeBG:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSizeBG:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v4, p3, 0x2

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v5, p3, 0x2

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgHeight:I

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d8

    if-eqz v0, :cond_2f5

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f5

    :cond_2d8
    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "sem_btn_default_text_color_light"

    const v4, 0x1060166

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1502(I)I

    const-string/jumbo v1, "sem_btn_background_color_light"

    const v4, 0x1060162

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1602(I)I

    :cond_2f5
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1400()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_327

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1500()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1500()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1500()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSizeBG:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1600()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_327
    return-void

    :goto_328
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/MagnifierDisplayPolicy;)V
    .registers 6

    invoke-virtual {p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method private getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10

    if-eqz p2, :cond_81

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".common"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".common"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".common"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v2, "Magnifier.Control"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getColor, color  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_66} :catch_74
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_66} :catch_67

    return v1

    :catch_67
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const-string v1, "Magnifier.Control"

    const-string/jumbo v2, "getColor, Resources.NotFoundException"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :catch_74
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v1, "Magnifier.Control"

    const-string/jumbo v2, "getColor, PackageManager.NameNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_81
    :goto_81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    const-string v0, "Magnifier.Control"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_30

    :try_start_e
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    :cond_1a
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_2b

    :cond_25
    :try_start_25
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public hide()V
    .registers 4

    const-string v0, "Magnifier.Control"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_c
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mShowing:Z

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_27

    :try_start_11
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_22

    :try_start_1c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw v1
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mShowing:Z

    return v0
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBottomMargin:I

    if-ge v2, v3, :cond_1f

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBottomMargin:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBottomMargin:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2d

    :cond_1f
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBottomMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public show()V
    .registers 5

    const-string v0, "Magnifier.Control"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mShowing:Z

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSizeBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_48

    :try_start_31
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_43

    :try_start_3d
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    monitor-exit v0

    return-void

    :catchall_43
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_48

    throw v1
.end method

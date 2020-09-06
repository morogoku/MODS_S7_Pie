.class public Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;
.super Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;,
        Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;
    }
.end annotation


# static fields
.field private static final INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;


# instance fields
.field private mAlbumHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mBigViewMKKeyboardSpace1:Landroid/view/View;

.field private mBigViewMKKeyboardSpace2:Landroid/view/View;

.field private mBigViewMKKeyboardSpace3:Landroid/view/View;

.field private mBigViewMKKeyboardSpace4:Landroid/view/View;

.field private mBigViewMusicBtnBottomSpace:Landroid/view/View;

.field private mBigViewMusicBtnTopSpace:Landroid/view/View;

.field private mBigViewMusicInfoBottomSpace:Landroid/view/View;

.field private mBigViewMusicInfoTopSpace:Landroid/view/View;

.field private mChildPage:Landroid/view/View;

.field private mControllerContainer:Landroid/view/View;

.field private mCoverSize:I

.field private mIsCoverShowing:Z

.field private mIsShowingPauseBtn:Z

.field private mLyricsBtn:Landroid/widget/TextView;

.field private mLyricsHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mLyricsScrollView:Landroid/view/View;

.field private mMetaData:Landroid/media/MediaMetadata;

.field private mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mMusicCoverBitmap:Landroid/graphics/Bitmap;

.field private mMusicCoverContainer:Landroid/view/View;

.field private mMusicCoverView:Landroid/widget/ImageView;

.field private mMusicHolder:Landroid/widget/FrameLayout;

.field private mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

.field private mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

.field private mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

.field private mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

.field private mRippleArea:Landroid/view/View;

.field private mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    sput-object v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    const-string v0, "android.media.metadata.ALBUM_ART"

    const-string v1, "android.media.metadata.ART"

    const-string v2, "android.media.metadata.DISPLAY_ICON"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/-$$Lambda$ServiceBoxMusicPage$s1qjQzj4gIaftbyhFVJ2c-rCDrw;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/music/-$$Lambda$ServiceBoxMusicPage$s1qjQzj4gIaftbyhFVJ2c-rCDrw;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateAnalytics(I)V

    return-void
.end method

.method private createRoundedCoverBitmapDrawable(Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    const v2, 0x7f070707

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object v1
.end method

.method private getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;
    .locals 5

    sget-object v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDetailByKeyCode(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    if-eqz v0, :cond_0

    const-string v0, "2"

    return-object v0

    :cond_0
    const-string v0, "1"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEventNameByKeyCode(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    const-string v0, "1051"

    return-object v0

    :pswitch_2
    const-string v0, "1053"

    return-object v0

    :pswitch_3
    const-string v0, "1052"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initBigPagePadding(Landroid/widget/LinearLayout;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3ec49ba6    # 0.384f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    div-int/lit8 v1, v0, 0x8

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07071d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070700

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private isDark(I)Z
    .locals 4

    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDarkCover()Z
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget v0, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    if-ltz v0, :cond_5

    iget-object v0, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v3

    iget v5, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    int-to-float v5, v5

    div-float v5, v0, v5

    iget-object v0, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v6, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    int-to-float v6, v6

    div-float v6, v0, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v0, 0x7f07070a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v0, 0x7f070708

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget v0, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    mul-int/lit8 v10, v9, 0x2

    sub-int/2addr v0, v10

    sub-int/2addr v0, v8

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v10, v0

    iget v0, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    sub-int/2addr v0, v9

    sub-int/2addr v0, v8

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v11, v0

    const/4 v0, 0x2

    mul-int/2addr v0, v9

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v12, v9

    mul-float/2addr v12, v6

    float-to-int v12, v12

    if-lez v10, :cond_4

    if-gtz v9, :cond_1

    goto :goto_0

    :cond_1
    add-int v13, v10, v0

    if-ge v3, v13, :cond_2

    sub-int v0, v3, v10

    :cond_2
    move v13, v0

    add-int v0, v11, v12

    if-ge v4, v0, :cond_3

    sub-int v12, v4, v11

    :cond_3
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v10, v11, v13, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v0, v2, v2, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15, v14, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    invoke-direct {v1, v14}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isDark(I)Z

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v16

    :catch_0
    move-exception v0

    const-string v14, "ServiceBoxMusicPage_Lock"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error : create bitmap "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_5
    :goto_1
    return v2
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getKeyguardStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->launchMusicApp(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->dismissServiceBox()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->showServiceBox()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic lambda$wd9Yi857chbIx2CagknkJ0ux8EQ(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->playAlbumAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->launchMusicApp(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)Z

    return-void
.end method

.method private playAlbumAnimation(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    const v8, 0x3f4ccccd    # 0.8f

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v8, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iput-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    const-string v0, "107"

    const-string v1, "1058"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v8, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private setGravity(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPlayBtnImage(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    const v2, 0x7f080407

    goto :goto_0

    :cond_1
    const v2, 0x7f080402

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v2, "lock_music_player_btn_pause_mtrl"

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v2, "lock_music_player_whitebg_btn_pause_mtrl"

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_3

    const v2, 0x7f080408

    goto :goto_1

    :cond_3
    const v2, 0x7f080403

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v2, "lock_music_player_btn_play_mtrl"

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v2, "lock_music_player_whitebg_btn_play_mtrl"

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const v2, 0x7f120b7a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const v2, 0x7f120b7b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAnalytics(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "107"

    goto :goto_0

    :cond_0
    const-string v0, "106"

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getEventNameByKeyCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getDetailByKeyCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateCoverSize()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFolderOpened()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x2

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eqz v1, :cond_1

    const v3, 0x3f2b020c    # 0.668f

    goto :goto_0

    :cond_1
    const v3, 0x3f774bc7    # 0.966f

    :goto_0
    mul-int/2addr v4, v0

    sub-int v4, v2, v4

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const v3, 0x3ec49ba6    # 0.384f

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const v3, 0x3f71a9fc    # 0.944f

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNavigationBarHeight:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    div-int/2addr v5, v4

    mul-int/2addr v4, v0

    sub-int v4, v2, v4

    const-string v6, "ServiceBoxMusicPage_Lock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "music cover size : width min-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/ height min-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v5, v4, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    move v4, v6

    :goto_3
    int-to-float v5, v2

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    const-string v5, "ServiceBoxMusicPage_Lock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "music cover size : gui-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/ min-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    if-le v5, v4, :cond_5

    iput v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    :cond_5
    return-void
.end method

.method private updateLyricsBtn(Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isDarkCover()Z

    move-result v0

    const-string v1, "ServiceBoxMusicPage_Lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isDarkCover"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_1

    const v3, 0x7f0602e0

    goto :goto_0

    :cond_1
    const v3, 0x7f0602e1

    :goto_0
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_2

    const v3, 0x7f08036c

    goto :goto_1

    :cond_2
    const v3, 0x7f08036d

    :goto_1
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    return v1
.end method

.method private updateMusicCoverView()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateCoverSize()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mCoverSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private updateSpace()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace1:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace1:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace2:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace2:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace3:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace3:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace4:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace4:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicInfoTopSpace:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicInfoTopSpace:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_4

    :cond_8
    move v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicInfoBottomSpace:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicInfoBottomSpace:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_a

    move v3, v1

    goto :goto_5

    :cond_a
    move v3, v2

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicBtnTopSpace:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicBtnTopSpace:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_c

    move v3, v1

    goto :goto_6

    :cond_c
    move v3, v2

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicBtnBottomSpace:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicBtnBottomSpace:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    move v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private updateViewStyle()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f0805a9

    goto :goto_0

    :cond_0
    const v1, 0x7f0805af

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->clear()V

    return-void
.end method

.method public clear()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isOOBETextNeed()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isMusicClosedTextNeed()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceBoxMusicPage_Lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear() showOOBEText = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", showMusicClosedText = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_2

    const v5, 0x7f120b7e

    goto :goto_2

    :cond_2
    const v5, 0x7f120b77

    :goto_2
    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUITextView;->setText(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v5, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v4

    :goto_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    if-nez v0, :cond_b

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    goto :goto_6

    :cond_b
    :goto_5
    move v3, v4

    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->setLyrics(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    const v3, 0x7f080405

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_d
    if-nez v0, :cond_e

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->requestCacheData(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    :cond_e
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "  ServiceBoxMusicPage_Lock"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Child page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mChildPage:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    invoke-virtual {v1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    IsCoverShowing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    IsShowingPauseBtn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    holder\'s child page : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "            - #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "            "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected getContentsView(I)Landroid/view/View;
    .locals 4

    const v0, 0x7f0d01f6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d01f5

    goto :goto_0

    :cond_0
    const v1, 0x7f0d01f4

    :goto_0
    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mChildPage:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mChildPage:Landroid/view/View;

    return-object v1
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_music"

    return-object v0
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .locals 1

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a04df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    const v0, 0x7f0a04eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    const v0, 0x7f0a04ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    const v0, 0x7f0a04ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    const v0, 0x7f0a04ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a04f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a04f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a04de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    const v0, 0x7f0a04f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setSelected(Z)V

    const v0, 0x7f0a04e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->initBigPagePadding(Landroid/widget/LinearLayout;)V

    const v0, 0x7f0a04e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace1:Landroid/view/View;

    const v0, 0x7f0a04e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace2:Landroid/view/View;

    const v0, 0x7f0a04e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace3:Landroid/view/View;

    const v0, 0x7f0a04e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace4:Landroid/view/View;

    const v0, 0x7f0a04e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicInfoTopSpace:Landroid/view/View;

    const v0, 0x7f0a04e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicInfoBottomSpace:Landroid/view/View;

    const v0, 0x7f0a04e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicBtnTopSpace:Landroid/view/View;

    const v0, 0x7f0a04e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMusicBtnBottomSpace:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateSpace()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateMusicCoverView()V

    :cond_0
    new-instance v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/-$$Lambda$ServiceBoxMusicPage$wd9Yi857chbIx2CagknkJ0ux8EQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/music/-$$Lambda$ServiceBoxMusicPage$wd9Yi857chbIx2CagknkJ0ux8EQ;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/-$$Lambda$ServiceBoxMusicPage$wd9Yi857chbIx2CagknkJ0ux8EQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/music/-$$Lambda$ServiceBoxMusicPage$wd9Yi857chbIx2CagknkJ0ux8EQ;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x58

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x55

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x57

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateViewStyle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    return-void
.end method

.method public isMusicControllerDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->addCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    return-void
.end method

.method protected onChangedSidePadding()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070700

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getPaddingStart()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->setPadding(IIII)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->removeAllCacheData()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->removeCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    const v0, 0x7f0a04ec

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method protected prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "servicebox_music_page_lyrics"

    new-instance v1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-direct {v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setClipFace(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-direct {v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    iget v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    new-array v2, v5, [Landroid/animation/Animator;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v7, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v4

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v6, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    fill-array-data v4, :array_2

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    goto :goto_0

    :cond_1
    new-array v2, v5, [Landroid/animation/Animator;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v7, [F

    fill-array-data v8, :array_3

    invoke-static {v6, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v4

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_4

    invoke-static {v6, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    fill-array-data v4, :array_5

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1, v0, v6}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :goto_0
    const-string v2, "music_cover"

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public refreshViews(I)V
    .locals 0

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceBoxMusicPage_Lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLyrics() isEmptyLyrics = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateLyricsBtn(Z)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->playAlbumAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const v4, 0x7f120b7f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceBoxMusicPage_Lock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMetadata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android.media.metadata.TITLE"

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.media.metadata.TITLE"

    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->requestLyrics()V

    :cond_2
    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceBoxMusicPage_Lock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "setMetadata : null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080405

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_6
    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->createRoundedCoverBitmapDrawable(Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateSpace()V

    :cond_0
    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceBoxMusicPage_Lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPlaybackState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->setPlayBtnImage(Z)V

    return-void
.end method

.method public setSessionEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setAlpha(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_7

    move v3, v2

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_9

    move v3, v2

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_b

    move v1, v2

    nop

    :cond_b
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    :cond_c
    return-void
.end method

.method public showExternalActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateGravity(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mGravity:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->setGravity(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->setGravity(Landroid/view/View;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->setGravity(Landroid/view/View;I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->setGravity(Landroid/view/View;I)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->setGravity(Landroid/view/View;I)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x800003

    if-ne p1, v1, :cond_6

    const/4 v1, 0x5

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setTextAlignment(I)V

    :cond_7
    iput p1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mGravity:I

    return-void

    :cond_8
    :goto_1
    return-void
.end method

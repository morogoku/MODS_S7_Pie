.class public Lcom/android/systemui/qs/customize/SecQSCustomizer;
.super Landroid/widget/LinearLayout;
.source "SecQSCustomizer.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    }
.end annotation


# instance fields
.field private ACTIVE_LEFT_INDICATOR:I

.field private ACTIVE_RIGHT_INDICATOR:I

.field private final ACTIVE_TO_AVAILABLE:I

.field private final AVAILABLE_TO_ACTIVE:I

.field private final CUSTOMIZER_TILES_SETTINGS_ERROR:I

.field private final CUSTOMIZER_TILES_SETTINGS_OK:I

.field private final MSG_HANDLE_ANIMATE_AREA:I

.field private final MSG_HANDLE_ANIMATE_DROP:I

.field private final MSG_HANDLE_ANIMATE_PAGE:I

.field private final MSG_HANDLE_ANIMATE_START:I

.field private isShown:Z

.field private mActiveColor:I

.field private mActiveColumns:I

.field private mActivePageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field private mActiveRows:I

.field private mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableColor:I

.field private mAvailablePageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field private mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

.field private mButtonHeight:I

.field protected mCellHeight:I

.field private mCellMarginTop:I

.field private mContext:Landroid/content/Context;

.field private mCurrentCutOutHeight:I

.field private mCurrentOrientation:I

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomizing:Z

.field private mDoneButton:Landroid/widget/TextView;

.field mDragListener:Landroid/view/View$OnDragListener;

.field private mDragStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field protected mIsClosing:Z

.field private mIsDroppedOnView:Z

.field protected mIsOpening:Z

.field private mKeyGuardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLeftIndicator:Landroid/widget/FrameLayout;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

.field private mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

.field private mMinNum:I

.field private mNewCustomTileList:Ljava/lang/String;

.field private mNewCutOutHeight:I

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOtherTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPageIndicatorHeight:I

.field mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mResetButton:Landroid/widget/TextView;

.field private mRightIndicator:Landroid/widget/FrameLayout;

.field private mShadowBuilder:Landroid/view/View$DragShadowBuilder;

.field private final mSizePoint:Landroid/graphics/Point;

.field private final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private mTileVerticalMargin:I

.field private mToast:Landroid/widget/Toast;

.field private mWhereAmI:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f130376

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_TO_AVAILABLE:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->AVAILABLE_TO_ACTIVE:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_START:I

    const/16 v2, 0x65

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_DROP:I

    const/16 v2, 0x66

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_PAGE:I

    const/16 v2, 0x67

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_AREA:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsOpening:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->CUSTOMIZER_TILES_SETTINGS_ERROR:I

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->CUSTOMIZER_TILES_SETTINGS_OK:I

    const-string v4, ""

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCustomTileList:Ljava/lang/String;

    new-instance v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mKeyGuardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_LEFT_INDICATOR:I

    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_RIGHT_INDICATOR:I

    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCutOutHeight:I

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentCutOutHeight:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mSizePoint:Landroid/graphics/Point;

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060235

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveColor:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060236

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableColor:I

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setupPager()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animationStart()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animationDrop()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animateArea(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animatePage(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animateCurrentPage(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->done()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->reset()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/CustomizeTileView;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Landroid/view/View$DragShadowBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/view/View$DragShadowBuilder;)Landroid/view/View$DragShadowBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/CustomizeTileView;I)Landroid/view/View$DragShadowBuilder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getDragShadowBuilder(Lcom/android/systemui/qs/customize/CustomizeTileView;I)Landroid/view/View$DragShadowBuilder;

    move-result-object v0

    return-object v0
.end method

.method private addActiveTile()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->isCustomTile:Z

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v3

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    new-instance v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v5, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isActive:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, v6, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v7, 0x7f120050

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v7, 0x7f1209d0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addTile(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v4, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iget-boolean v4, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    iput-boolean v4, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isActive:Z

    iget-object v4, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v4, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const-string v4, "SecQSCustomizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTile state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isNewCustomTile(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v4, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v6, 0x7f120050

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v6, 0x7f1209d1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private animateArea(II)V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iput p2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private animateCurrentPage(I)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    const/16 v2, 0xca

    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private animatePage(I)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private animationDrop()V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    const/16 v2, 0xc9

    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    const-string v4, "custom("

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v4, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    :goto_0
    iget v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    const/16 v5, 0x1388

    if-ne v4, v5, :cond_2

    const-string v4, "3005"

    goto :goto_1

    :cond_2
    const-string v4, "3004"

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private animationStart()V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    const/16 v2, 0xc8

    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private close()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setCustomizing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->save()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->showCustomizer(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->resetNewCustomTileList()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShadeLockedState()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "202"

    invoke-static {v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "292"

    invoke-static {v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private done()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->verifyTilesSettings()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v2, 0x7f120b51

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->close()V

    :cond_1
    return-void
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDragShadowBuilder(Lcom/android/systemui/qs/customize/CustomizeTileView;I)Landroid/view/View$DragShadowBuilder;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/view/View;)V

    return-object v0
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "SecQSCustomizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private isNewCustomTile(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "custom("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCustomTileList:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 6

    iget-object v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const v2, 0x7f120050

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getMinimumTileNum()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    if-gt v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->showToast()V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v5, 0x7f1209d1

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isActive:Z

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v5, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/android/systemui/qs/QSTileHost;->updateRemovedTileList(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v5, 0x7f1209d0

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isActive:Z

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v5, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/android/systemui/qs/QSTileHost;->updateRemovedTileList(Ljava/lang/String;Z)V

    :goto_0
    if-ne v1, v3, :cond_2

    const/16 v2, 0x1770

    goto :goto_1

    :cond_2
    const/16 v2, 0x1388

    :goto_1
    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return-void
.end method

.method private queryTiles()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method private recalcSpecs()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "SecQSCustomizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentSpecs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "mAllTiles size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isContainerKioskMode()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v6, v5, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const-string v7, "Wifi,Location,SoundMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,Flashlight,WifiHotspot,SmartStay,NavigationBar,Nfc,custom(com.android.nfc/com.samsung.android.nfc.quicktile.NfcTile),custom(com.android.settings/com.samsung.android.settings.qstile.PowerSavingTile),BlueLightFilter,custom(com.samsung.android.lool/com.samsung.android.sm.battery.ui.mode.BatteryModeTile),Hotspot,custom(com.android.settings/com.samsung.android.settings.qstile.NightThemeTiles)"

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move v9, v8

    move v8, v3

    :goto_1
    array-length v10, v7

    if-ge v8, v10, :cond_2

    aget-object v10, v7, v8

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_3

    iget-object v8, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v4

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    move v2, v3

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iput-boolean v3, v5, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    iget-object v6, v5, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput v4, v6, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->addTile(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveColumns:I

    mul-int/2addr v2, v3

    div-int v2, v0, v2

    add-int/2addr v2, v4

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setOffscreenPageLimit(I)V

    return-void

    :cond_7
    :goto_4
    return-void
.end method

.method private removeAreaAnimationMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 14

    const-string v0, "SecQSCustomizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTileHost;->getCscTileList()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v9, v8}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v10, v9}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v9

    goto :goto_1

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v10, v9}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_3

    :cond_1
    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v10, v8}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v13, v12, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v11, 0x1

    iput-boolean v11, v12, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v5, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v5, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTileHost;->resetRemovedTileList()V

    return-void
.end method

.method private save()V
    .locals 4

    const-string v0, "SecQSCustomizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentSpecs =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getHiddenTileSpec()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SecQSCustomizer"

    const-string/jumbo v2, "save none : same list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private setCustomizing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    return-void
.end method

.method private setTileSpecs()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUpIndicator()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTileVerticalMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMarginTop:I

    add-int/2addr v0, v1

    const v1, 0x7f0a0402

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0231

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_LEFT_INDICATOR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v3, 0x800003

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->bringToFront()V

    const v3, 0x7f0a0232

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_RIGHT_INDICATOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v4, 0x800005

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method private setupPager()V
    .locals 5

    const v0, 0x7f0a0406

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    const v0, 0x7f0a0407

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecPageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailablePageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailablePageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setDragListener(Landroid/view/View$OnDragListener;)V

    const v0, 0x7f0a0403

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    const v0, 0x7f0a0404

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecPageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActivePageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActivePageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0177

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v4, 0x7f120a4f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0440

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v4, 0x7f120a78

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showToast()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120b51

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "SecQSCustomizer"

    const-string/jumbo v2, "showToast"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private updateLayout()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMarginTop:I

    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mPageIndicatorHeight:I

    const v2, 0x7f0a0405

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    nop

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070598

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_0
    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v4, 0x7f0a041a

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    const v5, 0x7f1209d2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0705aa

    const v6, 0x3f4ccccd    # 0.8f

    const v7, 0x3f99999a    # 1.2f

    invoke-static {v4, v5, v6, v7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_1
    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    const/4 v6, 0x2

    const v7, 0x7f0a0401

    const/4 v8, -0x1

    if-eq v5, v6, :cond_2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-class v6, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSScreenGridResource;

    const/16 v8, 0x9

    invoke-virtual {v6, v8}, Lcom/android/systemui/qs/QSScreenGridResource;->getQSScreenGridResource(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f070595

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v6, v3, v8, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    move-object v3, v5

    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v0, :cond_3

    const v5, 0x7f0a040e

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mButtonHeight:I

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateSummaryLayout()V

    return-void
.end method

.method private updateSummaryLayout()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_1
    nop

    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentCutOutHeight:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const v1, 0x7f0a040f

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private verifyTilesSettings()I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->getQuickPanelItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    if-ge v2, v4, :cond_2

    if-nez v1, :cond_2

    return v3

    :cond_2
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public hide(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->verifyTilesSettings()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SecQSCustomizer"

    const-string/jumbo v1, "tiles are less than min. it should be reset."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->reset()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->close()V

    :cond_1
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCutOutHeight:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCutOutHeight:I

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentCutOutHeight:I

    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCutOutHeight:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCutOutHeight:I

    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentCutOutHeight:I

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateSummaryLayout()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mKeyGuardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const v0, 0x7f0a041a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v2, 0x7f06023e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateLayout()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mKeyGuardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->recalcSpecs()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "SecQSCustomizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "qscustomizer  onTouchEvent isCustomizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->setCustomizerCallback(Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;)V

    return-void
.end method

.method public show(II)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    if-nez v0, :cond_0

    const-string v0, "SecQSCustomizer"

    const-string/jumbo v1, "show customizer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsOpening:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateLayout()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QsNewCustomTileList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCustomTileList:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setTileSpecs()V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->addActiveTile()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->showCustomizer(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->queryTiles()V

    const-string v0, "203"

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 2

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a041a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public updateResources()Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f0b0076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0b0077

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const v2, 0x7f0b0074

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mSizePoint:Landroid/graphics/Point;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Point;->y:I

    const v3, 0x7f0705a5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMarginTop:I

    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v3, :cond_2

    const v3, 0x7f0b007c

    goto :goto_1

    :cond_2
    const v3, 0x7f0b007a

    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    const-class v3, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSScreenGridResource;->getScreenGridRows()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    const-class v3, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSScreenGridResource;->getScreenGridColumns()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveColumns:I

    const-class v3, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSScreenGridResource;->getTilePageHeightToDisplaySize()I

    move-result v3

    const-class v5, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSScreenGridResource;->getTileDimensionToDisplayHeight()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    mul-int/2addr v5, v2

    sub-int v5, v3, v5

    add-int/lit8 v6, v2, 0x1

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTileVerticalMargin:I

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTileVerticalMargin:I

    if-gez v5, :cond_3

    iput v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTileVerticalMargin:I

    :cond_3
    const v4, 0x7f0a0401

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0804b0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageMaxRows(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    const v5, 0x7f060235

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setContentsColor(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageMaxRows(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    const v6, 0x7f060236

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setContentsColor(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateShowButtonBackground()V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    const v6, 0x7f120a4f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    const v6, 0x7f120a78

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f07064e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v6, 0x7f0705bd

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v4, v6

    const v6, 0x7f070659

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v4, v6

    const v6, 0x7f070658

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mButtonHeight:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    const v6, 0x3f99999a    # 1.2f

    const v7, 0x3f4ccccd    # 0.8f

    const v8, 0x7f070592

    invoke-static {v4, v8, v7, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-static {v4, v8, v7, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateQSColoringResources(Landroid/view/View;)V

    return v5
.end method

.method public updateShowButtonBackground()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080606

    const v5, 0x7f080608

    if-eqz v2, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    nop

    move v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v7, 0x7f060233

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    const v8, 0x7f060210

    if-eqz v2, :cond_2

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->getColor(I)I

    move-result v9

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->getColor(I)I

    move-result v9

    :goto_2
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v2, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {v6, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getColor(I)I

    move-result v6

    goto :goto_4

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

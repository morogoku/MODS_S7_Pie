.class public abstract Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;
.super Ljava/lang/Object;
.source "SecGlobalActionsDialogBase.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;
.implements Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;,
        Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;,
        Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;,
        Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;
    }
.end annotation


# static fields
.field private static final LAND_NUM_COLUMNS_4_ITEMS:I = 0x2

.field private static final LAND_NUM_COLUMNS_MORE_THAN_4_ITEMS:I = 0x3

.field private static final PORT_NUM_COLUMNS_DEFAULT:I = 0x1

.field private static final PORT_NUM_COLUMNS_MORE_THEN_4_ITEMS:I = 0x2

.field private static final REFERENCE_NUM_ITEMS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SecGlobalActionsDialogBase"


# instance fields
.field protected final DEFAULT_DIM_AMOUNT:F

.field private mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

.field private mAnimatorCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

.field protected mAnimatorFSM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;

.field protected mBottomView:Landroid/widget/LinearLayout;

.field protected mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private mConfirmationView:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field protected mDialog:Landroid/app/Dialog;

.field protected mDialogStyle:I

.field protected final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mGridViewAdapter:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;

.field protected mHandlerUtil:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsVoiceAssistantMode:Z

.field private mIsWhiteTheme:Z

.field private mItemHorizontalSpacing:I

.field private mItemVerticalSpacingLand:I

.field private mItemVerticalSpacingPort:I

.field private mItemWidthLand:I

.field protected mLandListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

.field protected mListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

.field protected mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

.field private mNeedToForceUpdate:Z

.field protected mPresenter:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;

.field protected mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

.field protected final mResources:Landroid/content/res/Resources;

.field protected mRootView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

.field private mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mSelectedViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

.field protected mTopView:Landroid/widget/LinearLayout;

.field private mViewAnimationState:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

.field private mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

.field protected mWindowDecorationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowDecorationStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->DEFAULT_DIM_AMOUNT:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mNeedToForceUpdate:Z

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$2;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)V

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimatorCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResources:Landroid/content/res/Resources;

    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialogStyle:I

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mViewAnimationState:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    iput-object p0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mNeedToForceUpdate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mNeedToForceUpdate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemWidthLand:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemHorizontalSpacing:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIsVoiceAssistantMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIsWhiteTheme:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemVerticalSpacingPort:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemVerticalSpacingLand:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mConfirmationView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mSelectedViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    return-object v0
.end method

.method private awakenIfNecessary()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_13

    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    :cond_11
    goto :goto_13

    :catch_12
    move-exception v0

    :cond_13
    :goto_13
    return-void
.end method

.method private initContentView()V
    .registers 6

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v2, "sec_global_actions_item_list"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v3, "sec_global_actions_item_list_land"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v4, "sec_global_actions_top"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mTopView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v4, "sec_global_actions_bottom"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v4, "sec_global_actions_confirmation"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mConfirmationView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_VOICE_ASSISTANT_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIsVoiceAssistantMode:Z

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIsWhiteTheme:Z

    new-instance v2, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mGridViewAdapter:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mGridViewAdapter:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mGridViewAdapter:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private initDimens()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemHorizontalSpacing:I

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemVerticalSpacingPort:I

    goto :goto_47

    :cond_29
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemHorizontalSpacing:I

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemVerticalSpacingPort:I

    :goto_47
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemVerticalSpacingLand:I

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050236

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemWidthLand:I

    return-void
.end method

.method public static synthetic lambda$dismiss$2(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->getState()Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SecGlobalActionsDialogBase"

    const-string v2, "dismiss()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    if-eqz v1, :cond_2f

    :try_start_21
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->onDismiss()V

    :cond_34
    return-void
.end method

.method public static synthetic lambda$show$0(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;ZZZ)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->onStart(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->showDialog()V

    :cond_b
    return-void
.end method

.method public static synthetic lambda$showDialog$1(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;

    invoke-virtual {v0, p3, p2}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->createOnKeyListenerActions(Landroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method private prepareWindow(Landroid/view/Window;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResources:Landroid/content/res/Resources;

    const v2, 0x10403c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x3f400000    # 0.75f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x96b

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->onPrepareWindow()V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowDecorationStrategy;

    invoke-interface {v2, p1}, Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowDecorationStrategy;->onDecorateWindow(Landroid/view/Window;)V

    goto :goto_6b

    :cond_7b
    return-void
.end method

.method private registerRotationWatcher()V
    .registers 4

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIWindowManager:Landroid/view/IWindowManager;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$1;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    :try_start_14
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2a
    return-void
.end method


# virtual methods
.method public addWindowDecorator(Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowDecorationStrategy;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelConfirming()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimatorFSM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->handleAnimationEvent(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;)V

    return-void
.end method

.method public dismiss()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$Kv0ORnrzHWP1c4JHBZ1TyuRs-Gk;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$Kv0ORnrzHWP1c4JHBZ1TyuRs-Gk;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissWithAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimatorFSM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimatorFSM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->handleAnimationEvent(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;)V

    :cond_b
    return-void
.end method

.method public forceRequestLayout()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mNeedToForceUpdate:Z

    return-void
.end method

.method public getState()Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mViewAnimationState:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    return-object v0
.end method

.method public hideDialogOnSecureConfirm()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimatorFSM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->handleAnimationEvent(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mGridViewAdapter:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setState(Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mViewAnimationState:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    return-void
.end method

.method public show(ZZZ)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$4m7SfG-29cIi79J32PycwR-Qb_4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$4m7SfG-29cIi79J32PycwR-Qb_4;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;ZZZ)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showActionConfirming(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mSelectedViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimatorFSM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;->handleAnimationEvent(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$Event;)V

    return-void
.end method

.method showDialog()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "SecGlobalActionsDialogBase"

    const-string/jumbo v2, "showDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->awakenIfNecessary()V

    iget v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialogStyle:I

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialogStyle:I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    goto :goto_26

    :cond_1d
    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    :goto_26
    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->initDimens()V

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->initContentView()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->prepareWindow(Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->updateViewList()V

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;)V

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimatorCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->setCallback(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;)V

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimator:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    invoke-direct {v1, v2, v3, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;)V

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mAnimatorFSM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->onShowDialog()V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$xY3BGelzOyt0Lse1QYHCIdexWec;

    invoke-direct {v2, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$xY3BGelzOyt0Lse1QYHCIdexWec;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->registerRotationWatcher()V

    return-void
.end method

.method public updateViewList()V
    .registers 13

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mTopView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mGridViewAdapter:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->resetItems()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->getValidActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mTopView:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->TOP_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    if-ne v2, v3, :cond_6a

    new-instance v11, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mTopView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    iget-boolean v7, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIsVoiceAssistantMode:Z

    iget-boolean v8, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIsWhiteTheme:Z

    move-object v2, v11

    move-object v4, v1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;ZZLcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;)V

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->createView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_b3

    :cond_6a
    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_ae

    invoke-interface {v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->BOTTOM_TEXT_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    if-eq v2, v3, :cond_92

    invoke-interface {v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->BOTTOM_PET_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    if-eq v2, v3, :cond_92

    invoke-interface {v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->BOTTOM_SIMPLE_TEXT_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    if-ne v2, v3, :cond_ae

    :cond_92
    new-instance v11, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    iget-boolean v7, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIsVoiceAssistantMode:Z

    iget-boolean v8, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIsWhiteTheme:Z

    move-object v2, v11

    move-object v4, v1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;ZZLcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;)V

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->createView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_b3

    :cond_ae
    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mGridViewAdapter:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->addItem(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V

    :goto_b3
    goto/16 :goto_31

    :cond_b5
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mGridViewAdapter:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->updateNumColumns()V

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->notifyDataSetChanged()V

    return-void
.end method

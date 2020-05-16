.class public Lcom/android/systemui/coloring/QSColoringServiceManager;
.super Ljava/lang/Object;
.source "QSColoringServiceManager.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/coloring/QSColoringServiceObject;",
        "Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndicatorAlpha:F

.field private mIsForceApplyBlurEffect:Z

.field private mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

.field private mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

.field private mPluginQSColoringCallback:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/coloring/QSColoringServiceManager$1;-><init>(Lcom/android/systemui/coloring/QSColoringServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoringCallback:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mIsForceApplyBlurEffect:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mIndicatorAlpha:F

    const-string v1, "QSColoringServiceManager"

    const-string v2, "QSColoringServiceManager()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/coloring/QSColoringServiceModel;

    invoke-direct {v1}, Lcom/android/systemui/coloring/QSColoringServiceModel;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    iget-object v1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    invoke-virtual {v1}, Lcom/android/systemui/coloring/QSColoringServiceModel;->resetAllResources()V

    const-class v1, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/splugins/SPluginManager;

    const-class v2, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v1, p0, v2, v0}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/coloring/QSColoringServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->refreshAllQSColoringFunctions()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/coloring/QSColoringServiceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private refreshAllQSColoringFunctions()V
    .locals 3

    const-string v0, "QSColoringServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshAllQSColoringFunctions(START) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onUpdateQuickPanelButtonUsers()V

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsFrame()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/phone/BlurController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BlurController;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringBlurEffectEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/android/systemui/statusbar/phone/BlurController;->mOldDimAmount:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BlurController;->updateBlur(F)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BlurController;->clearBlur()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateQSColoringDimEffect()V

    :cond_5
    const-class v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    if-eqz v0, :cond_9

    nop

    iget-object v1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    iget-boolean v1, v1, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringEnabled:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    iget-boolean v1, v1, Lcom/android/systemui/coloring/QSColoringServiceModel;->mNotificationColoringEnabled:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->onColorPalleteChanged(I)V

    const-class v1, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationsOnDensityOrFontScaleChanged()V

    iget-object v1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPreviewController()Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateContatinerDimens()V

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateBackgroundColor()V

    :cond_9
    return-void
.end method

.method private updateQSColoringResourcesRecursive(Landroid/view/ViewGroup;I)V
    .locals 5

    if-eqz p1, :cond_8

    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->updateQSColoringResourcesRecursive(Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Landroid/widget/RadioButton;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getSwitchTrackColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    instance-of v2, v1, Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto :goto_1

    :cond_3
    instance-of v2, v1, Landroid/widget/Switch;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x34

    invoke-virtual {p0, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v1

    check-cast v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getSwitchTrackColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_5
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x36

    invoke-virtual {p0, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public getQSColoringBackgroundAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringBackgroundAlpha()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    return v0
.end method

.method public getQSColoringBackgroundColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    const v1, 0x7f060210

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getQSColoringBlurEffectAmount()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    iget v0, v0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringBlurAmount:F

    return v0
.end method

.method public getQSColoringColor(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSwitchTrackColor()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    const/16 v1, 0x35

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    return-void
.end method

.method public isForceApplyBlurEffect()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mIsForceApplyBlurEffect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotificationColoringEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    iget-boolean v0, v0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mNotificationColoringEnabled:Z

    return v0
.end method

.method public isPluginConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQSColoringBlurEffectEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    iget-boolean v0, v0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringBlurEffectEnabled:Z

    return v0
.end method

.method public isQSColoringEnabled()Z
    .locals 1

    nop

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    iget-boolean v0, v0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onPluginConfigurationChanged(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-virtual {p0, p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->onPluginConfigurationChanged(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;)V

    return-void
.end method

.method public onPluginConfigurationChanged(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;)V
    .locals 3

    const-string v0, "QSColoringServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginConfigurationChanged() plugin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->onPluginConfigurationChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QSColoringServiceManager"

    const-string v2, "Please check app version."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->onPluginConnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;Landroid/content/Context;)V
    .locals 3

    const-string v0, "QSColoringServiceManager"

    const-string/jumbo v1, "onPluginConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/coloring/QSColoringServiceModel;->readAllResources(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    iget-object v1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoringCallback:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->setCallback(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;)V

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->refreshAllQSColoringFunctions()V

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->onPluginConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QSColoringServiceManager"

    const-string v2, "Please check app version."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-virtual {p0, p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->onPluginDisconnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;)V
    .locals 3

    const-string v0, "QSColoringServiceManager"

    const-string/jumbo v1, "onPluginDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mModel:Lcom/android/systemui/coloring/QSColoringServiceModel;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceModel;->resetAllResources()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->refreshAllQSColoringFunctions()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->onPluginConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QSColoringServiceManager"

    const-string v2, "Please check app version."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public setForceApplyBlurEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mIsForceApplyBlurEffect:Z

    return-void
.end method

.method public updateQSColoringIndicatorBgAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    iget v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mIndicatorAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getIndicatorBgColor()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mIndicatorAlpha:F

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBgAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setBgAlpha(F)V

    :cond_5
    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const-string v0, "QSColoringServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateQSColoringResources("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->updateQSColoringResourcesRecursive(Landroid/view/ViewGroup;I)V

    :cond_1
    return-void
.end method

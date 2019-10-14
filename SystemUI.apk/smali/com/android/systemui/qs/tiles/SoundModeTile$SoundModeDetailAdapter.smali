.class final Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;
.super Ljava/lang/Object;
.source "SoundModeTile.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundModeDetailAdapter"
.end annotation


# instance fields
.field private mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

.field private mTempMuteBoard:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile;Lcom/android/systemui/qs/tiles/SoundModeTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->refreshDetailView()V

    return-void
.end method

.method public static synthetic lambda$setupDetailView$0(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->refreshDetailView()V

    return-void
.end method

.method private refreshDetailView()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getRingerMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->updateAllButtonViews(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteBoard:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteBoard:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->refreshAllView(I)V

    :cond_1
    return-void
.end method

.method private setupDetailView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0558

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->setBoardToTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;)V

    const v0, 0x7f0a0559

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteBoard:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteBoard:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTile$SoundModeDetailAdapter$mF4WfybyIMnAiDx_DCgbxqrdvVQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTile$SoundModeDetailAdapter$mF4WfybyIMnAiDx_DCgbxqrdvVQ;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->setBoardToTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;)V

    const v0, 0x7f0a062c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v1, 0x7f0a056a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->setVisibility(I)V

    new-instance v2, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->setVolumeMixerTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->updateCautionText(Landroid/view/View;)V

    return-void
.end method

.method private updateCautionText(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->isSystemSettingAllSoundOff()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0a055c

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$800(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120cac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v3

    invoke-static {v3}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$1000(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f120a8f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$500(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0188

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->setupDetailView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->refreshDetailView()V

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->updateQSColoringResources(Landroid/view/View;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x138b

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$400()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$300(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a97

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDetailViewAttached()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setToggleState(Z)V
    .locals 0

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 4

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const v0, 0x7f0a055d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const v1, 0x7f0a055c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

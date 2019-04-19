.class public Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;
.super Ljava/lang/Object;
.source "GrxRecoveryTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/GrxRecoveryTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GrxRecoveryDetailAdapter"
.end annotation


# instance fields
.field mLayoutId:I

.field mSwitch:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/GrxRecoveryTile;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->mLayoutId:I

    return-void
.end method

.method private setLayoutId()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->access$000(Lcom/android/systemui/qs/tiles/GrxRecoveryTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "qs_detail_recovery"

    const-string v2, "layout"

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->access$000(Lcom/android/systemui/qs/tiles/GrxRecoveryTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->mLayoutId:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->setLayoutId()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->access$000(Lcom/android/systemui/qs/tiles/GrxRecoveryTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "grswitch"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;

    iget-boolean v2, v2, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mRequireConfirmation:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x220

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mTileString:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 0

    return p1
.end method

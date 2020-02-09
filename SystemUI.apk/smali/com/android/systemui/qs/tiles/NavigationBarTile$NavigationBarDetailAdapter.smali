.class final Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;
.super Ljava/lang/Object;
.source "NavigationBarTile.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NavigationBarTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NavigationBarDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile;Lcom/android/systemui/qs/tiles/NavigationBarTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/NavigationBarTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$600(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0186

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0371

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$700(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$800()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$900(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fullScreenGestureEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    const v2, 0x7f0a047c

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0a036c

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    new-instance v2, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;Landroid/widget/RadioGroup;)V

    const v3, 0x7f0a036d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;Landroid/widget/RadioGroup;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a047d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$3;

    invoke-direct {v5, p0, v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;Landroid/widget/RadioGroup;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->updateQSColoringResources(Landroid/view/View;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1390

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$500(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1209ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->fireToggleStateChanged(Z)V

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
    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    const v1, 0x7f0a0372

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a0427

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a036e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a047e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

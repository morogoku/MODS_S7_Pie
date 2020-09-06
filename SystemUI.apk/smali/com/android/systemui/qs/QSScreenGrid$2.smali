.class Lcom/android/systemui/qs/QSScreenGrid$2;
.super Ljava/lang/Object;
.source "QSScreenGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSScreenGrid;->setBodyMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSScreenGrid;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSScreenGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v0}, Lcom/android/systemui/qs/QSScreenGrid;->access$000(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v0}, Lcom/android/systemui/qs/QSScreenGrid;->access$000(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    iget-object v3, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v3}, Lcom/android/systemui/qs/QSScreenGrid;->access$000(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/QSScreenGrid;->access$100(Lcom/android/systemui/qs/QSScreenGrid;Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSScreenGrid;->access$002(Lcom/android/systemui/qs/QSScreenGrid;Landroid/view/View;)Landroid/view/View;

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/qs/QSScreenGrid;->access$100(Lcom/android/systemui/qs/QSScreenGrid;Landroid/widget/ImageView;Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSScreenGrid;->access$200(Lcom/android/systemui/qs/QSScreenGrid;Landroid/widget/ImageView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v2}, Lcom/android/systemui/qs/QSScreenGrid;->access$300(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v2}, Lcom/android/systemui/qs/QSScreenGrid;->access$300(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v2}, Lcom/android/systemui/qs/QSScreenGrid;->access$300(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGrid;->access$400(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGrid;->access$400(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "2098"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGrid$2;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGrid;->access$400(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2098"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v4, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/QSScreenGridResource;->updateScreenGridColumns(I)V

    const-class v4, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v5, "qs_tile_layout"

    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    return-void
.end method

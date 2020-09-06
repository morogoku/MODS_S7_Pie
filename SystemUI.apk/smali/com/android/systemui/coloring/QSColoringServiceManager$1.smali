.class Lcom/android/systemui/coloring/QSColoringServiceManager$1;
.super Ljava/lang/Object;
.source "QSColoringServiceManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/coloring/QSColoringServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/coloring/QSColoringServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyColoring(Z)V
    .locals 3

    const-string v0, "QSColoringServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginQSColoring.Callback applyColoring() enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringEnabled:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$100(Lcom/android/systemui/coloring/QSColoringServiceManager;)V

    return-void
.end method

.method public applyColoringBlurEffect(ZF)V
    .locals 3

    const-string v0, "QSColoringServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginQSColoring.Callback applyColoringBlurEffect() enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringBlurEffectEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;

    move-result-object v0

    iput p2, v0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringBlurAmount:F

    :cond_0
    return-void
.end method

.method public applyColoringButtonGrid(I)V
    .locals 3

    const-string v0, "QSColoringServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginQSColoring.Callback applyColoringButtonGrid() gridType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public applyColoringDimEffect(ZF)V
    .locals 3

    const-string v0, "QSColoringServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginQSColoring.Callback applyColoringDimEffect() enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringDimEffectEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;

    move-result-object v0

    iput p2, v0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringDimAmount:F

    :cond_0
    return-void
.end method

.method public applyColoringResources()V
    .locals 2

    const-string v0, "QSColoringServiceManager"

    const-string v1, "PluginQSColoring.Callback applyColoringResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$100(Lcom/android/systemui/coloring/QSColoringServiceManager;)V

    return-void
.end method

.method public applyNotificationColoring(Z)V
    .locals 3

    const-string v0, "QSColoringServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginQSColoring.Callback applyNotificationColoring() enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$000(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/android/systemui/coloring/QSColoringServiceModel;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mNotificationColoringEnabled:Z

    :cond_0
    return-void
.end method

.method public getQSPanelColors()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "QSColoringServiceManager"

    const-string v1, "PluginQSColoring.Callback getQSPanelColors()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->access$200(Lcom/android/systemui/coloring/QSColoringServiceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06026c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

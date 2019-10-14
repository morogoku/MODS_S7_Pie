.class Lcom/samsung/android/systemui/multistar/MultiStarManager$1;
.super Ljava/lang/Object;
.source "MultiStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/multistar/MultiStarManager;-><init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->onPluginConnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPluginConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$302(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->getVersion()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$400()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$300()Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v2}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$500(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->init(Lcom/samsung/systemui/splugins/multistar/PluginMultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$300()Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->getDockedStackListener()Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$602(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$700(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->notifyLastState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$300()Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->getMultiWindowEventListener()Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$802(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->onPluginDisconnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPluginDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$302(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    iget-object v1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v1, v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$602(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    iget-object v1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v1, v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$802(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    return-void
.end method

.class Lcom/android/systemui/BixbyInteractor$1;
.super Ljava/lang/Object;
.source "BixbyInteractor.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BixbyInteractor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BixbyInteractor;


# direct methods
.method constructor <init>(Lcom/android/systemui/BixbyInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/BixbyInteractor$1;->onPluginConnected(Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;Landroid/content/Context;)V
    .locals 3

    const-string v0, "BixbyInteractor"

    const-string/jumbo v1, "onPluginConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    iput-object p1, v0, Lcom/android/systemui/BixbyInteractor;->mCapsuleInteractor:Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    iget-object v0, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    iget-object v0, v0, Lcom/android/systemui/BixbyInteractor;->mCapsuleInteractor:Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    iget-object v1, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    iget-object v1, v1, Lcom/android/systemui/BixbyInteractor;->mControllerFactory:Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;

    iget-object v2, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    iget-object v2, v2, Lcom/android/systemui/BixbyInteractor;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;->init(Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    iget-object v0, v0, Lcom/android/systemui/BixbyInteractor;->mCapsuleInteractor:Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;->start()V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/BixbyInteractor$1;->onPluginDisconnected(Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;)V
    .locals 2

    const-string v0, "BixbyInteractor"

    const-string/jumbo v1, "onPluginDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/BixbyInteractor;->mCapsuleInteractor:Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    return-void
.end method

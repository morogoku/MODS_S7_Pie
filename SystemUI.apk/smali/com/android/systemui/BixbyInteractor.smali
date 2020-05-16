.class public Lcom/android/systemui/BixbyInteractor;
.super Ljava/lang/Object;
.source "BixbyInteractor.java"


# instance fields
.field mCapsuleInteractor:Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

.field mContext:Landroid/content/Context;

.field mControllerFactory:Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/BixbyInteractor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/SystemControllerFactory;

    invoke-direct {v0}, Lcom/android/systemui/SystemControllerFactory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/BixbyInteractor;->mControllerFactory:Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;

    const-string v0, "BixbyInteractor"

    const-string v1, "BixbyInteractor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    const-string v0, "BixbyInteractor"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    new-instance v1, Lcom/android/systemui/BixbyInteractor$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/BixbyInteractor$1;-><init>(Lcom/android/systemui/BixbyInteractor;)V

    const-class v2, Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

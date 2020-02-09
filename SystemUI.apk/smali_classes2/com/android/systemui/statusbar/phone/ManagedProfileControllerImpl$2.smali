.class Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$2;
.super Landroid/os/ContainerStateReceiver;
.source "ManagedProfileControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/os/ContainerStateReceiver;->onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->access$100(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/os/ContainerStateReceiver;->onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->access$100(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "SystemUIImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/SystemUIImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrationListener"
.end annotation


# instance fields
.field private mSlotId:I

.field final synthetic this$0:Lcom/android/systemui/util/SystemUIImsManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/util/SystemUIImsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/SystemUIImsManager;Lcom/android/systemui/util/SystemUIImsManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;-><init>(Lcom/android/systemui/util/SystemUIImsManager;)V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationListener onDeregistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : TYPE_MOBILE_EMERGENCY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "mmtel"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$802(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationListener onDeregistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : voice profiles are Disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationListener onDeregistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : VoWifi is Disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationListener onDeregistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : non- MMTEL_VOICE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    iget v1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager;->fireImsRegStateChangedCallback(I)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationListener onRegistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : TYPE_MOBILE_EMERGENCY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "mmtel"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v3

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v2

    invoke-static {v0, v3}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$802(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationListener onRegistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : MMTEL_VOICE. But, NetworkType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v1

    invoke-static {v0, v3}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationListener onRegistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : VoWifi is Connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationListener onRegistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : VoWifi is Disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationListener onRegistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : non- MMTEL_VOICE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    iget v1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager;->fireImsRegStateChangedCallback(I)V

    return-void
.end method

.method public setSlotId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    return-void
.end method

.class Lcom/android/systemui/util/SystemUIImsManager$1$1;
.super Ljava/lang/Object;
.source "SystemUIImsManager.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/SystemUIImsManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/util/SystemUIImsManager$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/SystemUIImsManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected mImsManager : slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v2, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$200(Lcom/android/systemui/util/SystemUIImsManager;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    new-instance v2, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    iget-object v3, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v3, v3, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-direct {v2, v3}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;-><init>(Lcom/android/systemui/util/SystemUIImsManager;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    new-instance v2, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    iget-object v3, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v3, v3, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;-><init>(Lcom/android/systemui/util/SystemUIImsManager;Lcom/android/systemui/util/SystemUIImsManager$1;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->setSlotId(I)V

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v1}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v2, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v2, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method public onDisconnected()V
    .locals 3

    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected mImsManager : slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v2, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v1}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v2, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v2, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$200(Lcom/android/systemui/util/SystemUIImsManager;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

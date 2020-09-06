.class Lcom/android/server/locksettings/LockSettingsStrongAuth$1;
.super Landroid/os/Handler;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    goto :goto_34

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleStrongAuthTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$400(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_34

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$300(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_34

    :pswitch_16
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$100(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    goto :goto_34

    :pswitch_20
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$000(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    goto :goto_34

    :pswitch_2a
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$200(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V

    nop

    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_20
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

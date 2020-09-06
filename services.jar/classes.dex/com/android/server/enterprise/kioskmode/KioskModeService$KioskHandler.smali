.class final Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;
.super Landroid/os/Handler;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KioskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    if-eqz p1, :cond_48

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_4a

    goto :goto_48

    :pswitch_a
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$302(Z)Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "adminuid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x2

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V
    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$500(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;I)V

    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$302(Z)Z

    goto :goto_48

    :pswitch_26
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$302(Z)Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "adminuid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$400(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$302(Z)Z

    nop

    :cond_48
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_a
    .end packed-switch
.end method

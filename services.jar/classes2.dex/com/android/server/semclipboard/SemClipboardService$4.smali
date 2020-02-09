.class Lcom/android/server/semclipboard/SemClipboardService$4;
.super Landroid/os/Handler;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e2

    const-string v0, "SemClipboardService"

    const-string v1, "handler msg : default"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_e1

    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e1

    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.content.clipboard.action.REMOVE_CLIP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "path"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    const-string v4, "extra_path"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_41
    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v5}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/semclipboard/SemClipboardService;->access$1500(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v5, "SemClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLIPBOARD_DELETE_RECEIVER : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    :pswitch_70
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1500(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v1

    # setter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$2002(Lcom/android/server/semclipboard/SemClipboardService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    const-string v0, "SemClipboardService"

    const-string v1, "mCBUIManager enter case. MSG_DISMISS_DIALOG"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$2000(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->dismiss()V

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$2002(Lcom/android/server/semclipboard/SemClipboardService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    goto :goto_e1

    :pswitch_96
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1500(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v1

    # setter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$2002(Lcom/android/server/semclipboard/SemClipboardService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$2000(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$2100(Lcom/android/server/semclipboard/SemClipboardService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$2200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_e1

    :pswitch_bb
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1500(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v1

    # setter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$2002(Lcom/android/server/semclipboard/SemClipboardService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$2000(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$2100(Lcom/android/server/semclipboard/SemClipboardService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$4;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$2200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardUIManager;->show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_e1

    :pswitch_e0
    nop

    :cond_e1
    :goto_e1
    return-void

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_bb
        :pswitch_96
        :pswitch_70
        :pswitch_11
    .end packed-switch
.end method

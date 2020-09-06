.class final Lcom/android/server/pdp/PdpService$SvcPdpHandler;
.super Landroid/os/Handler;
.source "PdpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pdp/PdpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SvcPdpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pdp/PdpService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdp/PdpService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    goto/16 :goto_ed

    :cond_7
    const-string v0, "PdpService"

    const-string v2, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST >"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.pdp.last_job"

    const-string v2, "XXXX"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ro.boot.carrierid"

    const-string v3, "XXXX"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "XXXX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    const-string v4, "XAC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v1

    const-string v5, "PdpService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PDP] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PdpService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PDP] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_e5

    if-eqz v4, :cond_e5

    const-string/jumbo v5, "sys.pdp.last_job"

    const-string v6, "XXXX"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PdpService"

    const-string v6, "[PDP] Prepare Toast"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "setupwizard"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    iget-object v5, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v6, "[PDP]\nback-up : fail\nsetup-wizard [ FINISH ]"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_e5

    :cond_8e
    const-string v5, "backup_done"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    iget-object v1, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v5, "[PDP]\nbackup : success"

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_e5

    :cond_9f
    const-string/jumbo v5, "remove-bkup"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    iget-object v1, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v5, "[PDP]\ndelete the back-up files : done"

    const/16 v6, 0x11

    invoke-virtual {v1, v5, v6}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_e5

    :cond_b2
    const-string/jumbo v5, "restore_fail"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x56

    if-eqz v5, :cond_c5

    iget-object v1, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v5, " [PDP]\nrestore : fail\nPlease download a userdata.img file again."

    invoke-virtual {v1, v5, v6}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_e5

    :cond_c5
    const-string/jumbo v5, "restore_done"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    iget-object v1, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v5, "[PDP]\nrestore : success"

    invoke-virtual {v1, v5, v6}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_e5

    :cond_d6
    const-string v5, "detect-bkup"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    iget-object v5, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v6, "[PDP]\nback-up files are detected"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    :cond_e5
    :goto_e5
    const-string v1, "PdpService"

    const-string v5, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST <"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_ed
    return-void
.end method

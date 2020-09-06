.class Lcom/android/server/semclipboard/SemClipboardService$3;
.super Ljava/lang/Object;
.source "SemClipboardService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/semclipboard/SemClipboardService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;

.field final synthetic val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field final synthetic val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field final synthetic val$format:I


# direct methods
.method constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/samsung/android/content/clipboard/data/SemClipData;ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    iput-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iput p3, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$format:I

    iput-object p4, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    const/16 v2, 0x10

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    if-ne v1, v3, :cond_63

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$1400(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_3d

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/semclipboard/SemClipboardService;->access$1400(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # setter for: Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;
    invoke-static {v6, v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$1402(Lcom/android/server/semclipboard/SemClipboardService;Landroid/content/Context;)Landroid/content/Context;

    goto :goto_53

    :cond_3d
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$1500(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_53

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/semclipboard/SemClipboardService;->access$1500(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)Ljava/lang/String;

    move-result-object v0

    :cond_53
    :goto_53
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_62

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v6, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v6, v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    :cond_62
    goto :goto_bb

    :cond_63
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    if-ne v1, v2, :cond_bb

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$1400(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_96

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/semclipboard/SemClipboardService;->access$1400(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromUriData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ac

    :cond_96
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$1500(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_ac

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/semclipboard/SemClipboardService;->access$1500(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromUriData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Ljava/lang/String;

    move-result-object v0

    :cond_ac
    :goto_ac
    if-eqz v0, :cond_bb

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_bb

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v6, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-virtual {v6, v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    :cond_bb
    :goto_bb
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v1, :cond_11a

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I
    invoke-static {v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$1600(Lcom/android/server/semclipboard/SemClipboardService;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Lcom/samsung/android/content/clipboard/data/SemClipData;I)Z

    move-result v1

    if-eqz v1, :cond_11a

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v5

    const-string v6, "CBCT"

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->sendLoggingForCB(ILjava/lang/String;)V
    invoke-static {v1, v5, v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$1700(Lcom/android/server/semclipboard/SemClipboardService;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->updateDataListChange(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    invoke-static {v1, v5}, Lcom/android/server/semclipboard/SemClipboardService;->access$1800(Lcom/android/server/semclipboard/SemClipboardService;Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v5}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    # setter for: Lcom/android/server/semclipboard/SemClipboardService;->KNOX_PASTE_FLAG:Z
    invoke-static {v1, v5}, Lcom/android/server/semclipboard/SemClipboardService;->access$402(Lcom/android/server/semclipboard/SemClipboardService;Z)Z

    const-string v1, "SemClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add success && KNOX_PASTE_FLAG is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->KNOX_PASTE_FLAG:Z
    invoke-static {v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$400(Lcom/android/server/semclipboard/SemClipboardService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_121

    :cond_11a
    const-string v1, "SemClipboardService"

    const-string v5, "Failed to add data."

    invoke-static {v1, v5}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_121
    iget v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$format:I

    const/4 v5, 0x2

    if-eq v1, v5, :cond_147

    if-eq v1, v3, :cond_139

    if-eq v1, v2, :cond_12b

    goto :goto_161

    :cond_12b
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$1900(Lcom/android/server/semclipboard/SemClipboardService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_161

    :cond_139
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$1900(Lcom/android/server/semclipboard/SemClipboardService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_161

    :cond_147
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->HasExtraData()Z

    move-result v4

    if-eqz v4, :cond_15b

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v3

    :cond_15b
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService$3;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v2, v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$1900(Lcom/android/server/semclipboard/SemClipboardService;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_161
    if-eqz v0, :cond_1b6

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/clipboard/temp/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_190

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No target file...thumFullPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b6

    :cond_190
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1b6

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1b6

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_1b6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b6

    const-string v3, "SemClipboardService"

    const-string v4, "Temp preview file of html item will be deleted"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    :cond_1b6
    :goto_1b6
    return-void
.end method

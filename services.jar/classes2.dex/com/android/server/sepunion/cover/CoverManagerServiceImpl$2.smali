.class Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;
.super Landroid/database/ContentObserver;
.source "CoverManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    if-nez p2, :cond_d

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mScreenChangeObserver: URI is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_2e

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScreenChangeObserver: URI changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$600(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mDisplaySizeValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$700(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mDisplaySizeValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$700(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    :cond_52
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$800(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # setter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mDisplaySizeValue:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$702(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    :cond_62
    return-void
.end method

.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->readFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$000(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "CertBlacklister"

    const-string v2, "Read a blacklist from file.."

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_56

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    sget-object v2, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$202(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1f} :catch_29
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_20
    .catchall {:try_start_14 .. :try_end_1f} :catchall_56

    :goto_1f
    goto :goto_32

    :catch_20
    move-exception v1

    :try_start_21
    const-string v2, "CertBlacklister"

    const-string v3, "Failed to read list"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :catch_29
    move-exception v1

    const-string v2, "CertBlacklister"

    const-string v3, "File does not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :goto_32
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "CertBlacklister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBlacklist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    monitor-exit v0

    return-void

    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_56

    throw v1
.end method

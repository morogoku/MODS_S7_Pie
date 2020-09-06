.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->writeBlacklist()V
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

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$000(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "CertBlacklister"

    const-string v3, "Certificate blacklist not changed, return..."

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    monitor-exit v0

    return-void

    :cond_2a
    if-eqz v1, :cond_a7

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$202(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "CertBlacklister"

    const-string v3, "Certificate blacklist changed, updating..."

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_a9

    :cond_3e
    const/4 v2, 0x0

    :try_start_3f
    const-string v3, "journal"

    const-string v4, ""

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$000(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$300(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100()Z

    move-result v4

    if-eqz v4, :cond_83

    const-string v4, "CertBlacklister"

    const-string v5, "Certificate blacklist updated"

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_83} :catch_89
    .catchall {:try_start_3f .. :try_end_83} :catchall_87

    :cond_83
    :try_start_83
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_a9

    goto :goto_94

    :catchall_87
    move-exception v3

    goto :goto_a3

    :catch_89
    move-exception v3

    :try_start_8a
    const-string v4, "CertBlacklister"

    const-string v5, "Failed to write list"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_87

    :try_start_91
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_94
    nop

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v3

    if-eqz v3, :cond_a7

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;->onCertBlacklistChanged()V

    goto :goto_a7

    :goto_a3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_a7
    :goto_a7
    monitor-exit v0

    return-void

    :catchall_a9
    move-exception v1

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_91 .. :try_end_ab} :catchall_a9

    throw v1
.end method

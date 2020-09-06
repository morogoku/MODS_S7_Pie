.class public abstract Lcom/android/server/pm/MoreAtomicFile;
.super Landroid/util/AtomicFile;
.source "MoreAtomicFile.java"


# static fields
.field protected static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "MoreAtomicFile"


# instance fields
.field private final mMoreBackupName:Ljava/io/File;

.field private mPw:Ljava/io/PrintWriter;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mPw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mbak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/MoreAtomicFile;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/android/server/pm/MoreAtomicFile;->mPw:Ljava/io/PrintWriter;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mPw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mbak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/MoreAtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/pm/MoreAtomicFile;->mPw:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public delete()V
    .registers 4

    invoke-super {p0}, Landroid/util/AtomicFile;->delete()V

    iget-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".crt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2f
    return-void
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;Z)V

    return-void
.end method

.method protected abstract isDamaged(Ljava/io/File;)Z
.end method

.method public openRead()Ljava/io/FileInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/MoreAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->processDamagedFile()V

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "only more backup, rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/MoreAtomicFile;->logToFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_57
    iget-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mPw:Ljava/io/PrintWriter;

    invoke-super {p0, v0}, Landroid/util/AtomicFile;->openRead(Ljava/io/PrintWriter;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public processDamagedFile()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->saveDamagedFile()V

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method saveDamagedFile()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".crt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2f
    return-void
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/MoreAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->processDamagedFile()V

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "only more backup, rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/MoreAtomicFile;->logToFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/MoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_57
    iget-object v0, p0, Lcom/android/server/pm/MoreAtomicFile;->mPw:Ljava/io/PrintWriter;

    invoke-super {p0, v0}, Landroid/util/AtomicFile;->startWrite(Ljava/io/PrintWriter;)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

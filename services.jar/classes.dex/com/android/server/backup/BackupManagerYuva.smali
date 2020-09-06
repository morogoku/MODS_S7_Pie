.class public Lcom/android/server/backup/BackupManagerYuva;
.super Ljava/lang/Object;
.source "BackupManagerYuva.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupManagerYuva"

.field private static backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

.field private static final valueCscYuva:Ljava/lang/String;


# instance fields
.field private isMemorySaverBackupFail:Z

.field private isMemorySaverRestoreFail:Z

.field private isSupported:Z

.field private mBackupPackageName:Ljava/lang/String;

.field private mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

.field private mRestorePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/BackupManagerYuva;->valueCscYuva:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isSupported:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    return-void
.end method

.method public static getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;
    .registers 1

    sget-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/backup/BackupManagerYuva;

    invoke-direct {v0}, Lcom/android/server/backup/BackupManagerYuva;-><init>()V

    sput-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_b
    sget-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    return-object v0
.end method


# virtual methods
.method public resetBackupRestoreState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    return-void
.end method

.method public sendEndBackupCallback()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "BackupManagerYuva"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "full backup Completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onBackupCompleted(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_37

    :catch_2c
    move-exception v1

    const-string v2, "BackupManagerYuva"

    const-string/jumbo v3, "full backup observer went away: EndBackup"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_37
    :goto_37
    return-void
.end method

.method public sendEndRestoreCallback()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "BackupManagerYuva"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onRestoreCompleted(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_37

    :catch_2c
    move-exception v1

    const-string v2, "BackupManagerYuva"

    const-string/jumbo v3, "full restore observer went away: endRestore"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_37
    :goto_37
    return-void
.end method

.method public sendStartBackupCallback(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v0, :cond_32

    :try_start_6
    const-string v0, "BackupManagerYuva"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onStartBackup(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_25} :catch_26

    goto :goto_32

    :catch_26
    move-exception v0

    const-string v1, "BackupManagerYuva"

    const-string/jumbo v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_32
    :goto_32
    return-void
.end method

.method public sendStartRestoreCallback(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v0, :cond_33

    :try_start_6
    const-string v0, "BackupManagerYuva"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onRestoreStart(Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_26} :catch_27

    goto :goto_33

    :catch_27
    move-exception v0

    const-string v1, "BackupManagerYuva"

    const-string/jumbo v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_33
    :goto_33
    return-void
.end method

.method public setMemorySaverBackupFail()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    return-void
.end method

.method public setMemorySaverObserver(Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerYuva;->resetBackupRestoreState()V

    return-void
.end method

.method public setMemorySaverRestoreFail()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    return-void
.end method

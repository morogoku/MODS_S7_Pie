.class Lcom/android/server/locksettings/LockSettingsStorage;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsStorage$Cache;,
        Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;,
        Lcom/android/server/locksettings/LockSettingsStorage$Callback;,
        Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;,
        Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    }
.end annotation


# static fields
.field private static final APP_FINGER_PRINT_PASSWORD_FILE:Ljava/lang/String; = "applockfingerprintpassword.key"

.field private static final APP_LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "applockbackuppin.key"

.field private static final APP_LOCK_PASSWORD_FILE:Ljava/lang/String; = "applockpassword.key"

.field private static final APP_LOCK_PATTERN_FILE:Ljava/lang/String; = "applockpattern.key"

.field private static final APP_LOCK_PIN_FILE:Ljava/lang/String; = "applockpin.key"

.field private static final BASE_ZERO_LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.gesture.key"

.field private static final CHILD_PROFILE_LOCK_FILE:Ljava/lang/String; = "gatekeeper.profile.key"

.field private static final COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DEBUG:Z = false

.field private static final DEFAULT:Ljava/lang/Object;

.field private static final DIGITAL_WELLBEING_PASSWORD_FILE:Ljava/lang/String; = "digitalwellbeingpassword.key"

.field private static final GATEKEEPER_LOCK_BACKUP_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.backuppassword.key"

.field private static final INITIAL_STATE:I = 0x0

.field private static final LEGACY_LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LEGACY_LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_BACKUP_PASSWORD_FILE:Ljava/lang/String; = "backuppassword.key"

.field private static final LOCK_FMM_PASSWORD_FILE:Ljava/lang/String; = "fmmpassword.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.pattern.key"

.field private static final LOCK_PRIVATE_BACKUP_PIN_FILE:Ljava/lang/String; = "personalbackuppin.key"

.field private static final LOCK_PRIVATE_FINGER_PRINT_PASSWORD_FILE:Ljava/lang/String; = "personalfingerprintpassword.key"

.field private static final LOCK_PRIVATE_PASSWORD_FILE:Ljava/lang/String; = "personalpassword.key"

.field private static final LOCK_PRIVATE_PATTERN_FILE:Ljava/lang/String; = "personalpattern.key"

.field private static final LOCK_PRIVATE_PIN_FILE:Ljava/lang/String; = "personalpin.key"

.field private static final LOCK_RECOVERY_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.recoverypassword.key"

.field private static final LOCK_SKT_FILE:Ljava/lang/String; = "sktpassword.key"

.field private static final LOCK_STATE:I = 0x1

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlock.txt"

.field private static final SYNTHETIC_PASSWORD_DIRECTORY:Ljava/lang/String; = "spblob/"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsStorage"

.field private static final UNLOCK_STATE:I = 0x2

.field private static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private static final secretKey:Ljava/lang/String; = "SKT : Find lost phone plus !!!"


# instance fields
.field private final mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

.field private final mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private mLockTypeCallback:Landroid/os/IRemoteCallback;

.field private mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

.field private final mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

.field private mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

.field private mSKTLockState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v0, "name"

    const-string/jumbo v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v1, "i_love_office_tg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;-><init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    return-void
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    return-object v0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private ensureSyntheticPasswordDirectoryForUser(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_d
    return-void
.end method

.method private getAppLockBackupPinFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "applockbackuppin.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "applockfingerprintpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "applockpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockPatternFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "applockpattern.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockPinFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "applockpin.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBaseZeroLockPatternFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "gatekeeper.gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCarrierLockPlusModeFromFile()Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->isCarrierLockENCVersion()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/sec_efs/sktdm_mem/enclawlock.txt"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3d

    :try_start_17
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v3, "LockSettingsStorage"

    const-string/jumbo v4, "getCarrierLockPlusMode() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_33} :catch_35

    const/4 v0, 0x1

    :cond_34
    goto :goto_3d

    :catch_35
    move-exception v2

    const-string v3, "LockSettingsStorage"

    const-string v4, "IOException while read file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_3d
    return v0

    :cond_3e
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/sec_efs/sktdm_mem/lawlock.txt"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6b

    :try_start_4b
    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_62

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    const-string v3, "LockSettingsStorage"

    const-string/jumbo v4, "getCarrierLockPlusMode() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_61} :catch_63

    const/4 v0, 0x1

    :cond_62
    goto :goto_6b

    :catch_63
    move-exception v2

    const-string v3, "LockSettingsStorage"

    const-string v4, "IOException while read file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    return v0
.end method

.method private getDigitalWellbeingPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "digitalwellbeingpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGatekeeperLockBackupPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "gatekeeper.backuppassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "SKT : Find lost phone plus !!!"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private getLockBackupPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "backuppassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLockCarrierPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "sktpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2b
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLockFMMPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "fmmpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLockRecoveryPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "gatekeeper.recoverypassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateModeLockBackupPinFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "personalbackuppin.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateModeLockPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "personalpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateModeLockPatternFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "personalpattern.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateModeLockPinFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "personalpin.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasFile(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private isCarrierLockENCVersion()Z
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/sktdm_mem/enclawlock.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 9

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekFile(Ljava/lang/String;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    # invokes: Lcom/android/server/locksettings/LockSettingsStorage$Cache;->getVersion()I
    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_a0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1c
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    move-object v2, v3

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_35} :catch_54
    .catchall {:try_start_1c .. :try_end_35} :catchall_52

    nop

    :try_start_36
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    :goto_39
    goto :goto_7a

    :catch_3a
    move-exception v3

    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_42
    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :catchall_52
    move-exception v3

    goto :goto_82

    :catch_54
    move-exception v3

    :try_start_55
    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_52

    if-eqz v0, :cond_7a

    :try_start_6d
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_39

    :catch_71
    move-exception v3

    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_42

    :cond_7a
    :goto_7a
    if-eqz v2, :cond_81

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFileIfUnchanged(Ljava/lang/String;[BI)V

    :cond_81
    return-object v2

    :goto_82
    if-eqz v0, :cond_9f

    :try_start_84
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_9f

    :catch_88
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LockSettingsStorage"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    throw v3

    :catchall_a0
    move-exception v1

    :try_start_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw v1
.end method

.method private readPasswordHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_17

    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_2c

    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    :cond_2c
    return-object v3
.end method

.method private readPatternHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_16

    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_29

    # invokes: Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->access$300([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    return-object v1

    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_3e

    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    :cond_3e
    return-object v2
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rws"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    if-eqz p2, :cond_19

    array-length v2, p2

    if-nez v2, :cond_13

    goto :goto_19

    :cond_13
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1e

    :cond_19
    :goto_19
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_1e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_21} :catch_40
    .catchall {:try_start_4 .. :try_end_21} :catchall_3e

    nop

    :try_start_22
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
    .catchall {:try_start_22 .. :try_end_25} :catchall_7f

    :goto_25
    goto :goto_72

    :catch_26
    move-exception v2

    :try_start_27
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3a
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_7f

    goto :goto_25

    :catchall_3e
    move-exception v2

    goto :goto_79

    :catch_40
    move-exception v2

    :try_start_41
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_3e

    if-eqz v1, :cond_72

    :try_start_59
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_7f

    goto :goto_25

    :catch_5d
    move-exception v2

    :try_start_5e
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a

    :cond_72
    :goto_72
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_5e .. :try_end_78} :catchall_7f

    return-void

    :goto_79
    if-eqz v1, :cond_98

    :try_start_7b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_81
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_98

    :catchall_7f
    move-exception v1

    goto :goto_99

    :catch_81
    move-exception v3

    :try_start_82
    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    :goto_98
    throw v2

    :goto_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_7f

    throw v1
.end method


# virtual methods
.method clearCache()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->clear()V

    return-void
.end method

.method closeDatabase()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->close()V

    return-void
.end method

.method public decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sget-object v4, Lcom/android/server/locksettings/LockSettingsStorage;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_21} :catch_98
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_21} :catch_7b
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_21} :catch_5e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_21} :catch_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_24

    move-object v0, v3

    :goto_22
    goto/16 :goto_b6

    :catch_24
    move-exception v1

    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    :catch_41
    move-exception v1

    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :catch_5e
    move-exception v1

    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :catch_7b
    move-exception v1

    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :catch_98
    move-exception v1

    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :goto_b6
    return-object v0
.end method

.method public deleteSyntheticPasswordState(IJLjava/lang/String;)V
    .registers 13

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x0

    :try_start_10
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rws"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_40
    .catchall {:try_start_10 .. :try_end_18} :catchall_3e

    :try_start_18
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v5, v4, [B

    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_22} :catch_29
    .catchall {:try_start_18 .. :try_end_22} :catchall_26

    :try_start_22
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_40
    .catchall {:try_start_22 .. :try_end_25} :catchall_3e

    goto :goto_57

    :catchall_26
    move-exception v4

    move-object v5, v2

    goto :goto_2f

    :catch_29
    move-exception v4

    :try_start_2a
    throw v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_2f
    if-eqz v5, :cond_3a

    :try_start_31
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_40
    .catchall {:try_start_31 .. :try_end_34} :catchall_3e

    goto :goto_3d

    :catch_35
    move-exception v6

    :try_start_36
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3d

    :cond_3a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :goto_3d
    throw v4
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3e} :catch_40
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v2

    goto :goto_61

    :catch_40
    move-exception v3

    :try_start_41
    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to zeroize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_3e

    :goto_57
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    nop

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    goto :goto_65

    :goto_61
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v2

    :cond_65
    :goto_65
    return-void
.end method

.method public getCarrierLockPlusMode()Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    packed-switch v1, :pswitch_data_4e

    const/4 v0, 0x0

    goto :goto_4c

    :pswitch_8
    const/4 v0, 0x1

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCarrierLockPlusMode#mSKTLockState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :pswitch_23
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockPlusModeFromFile()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    const/4 v0, 0x1

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCarrierLockPlusMode#mSKTLockState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_47
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    const/4 v0, 0x0

    nop

    :goto_4c
    return v0

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_8
    .end packed-switch
.end method

.method getChildProfileLockFile(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "gatekeeper.profile.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "gatekeeper.password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "gatekeeper.pattern.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object v0
.end method

.method protected getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    const-string v1, "%016x.%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isVirtualUser()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "users"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "spblob/"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_35

    return-object v2

    :cond_34
    goto :goto_4c

    :catch_35
    move-exception v0

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error while get sp path for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "spblob/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getValidSyntheticPasswordHandleLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 25

    move-object/from16 v0, p4

    new-instance v3, Ljava/io/File;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "LockSettingsStorage"

    const-string/jumbo v6, "getValidSyntheticPasswordHandleLocked return defaultHandle 1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p5

    :cond_18
    const-string v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getValidSyntheticPasswordHandleLocked handleFileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  lastModified="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_52

    const-string v7, "LockSettingsStorage"

    const-string/jumbo v8, "getValidSyntheticPasswordHandleLocked return defaultHandle 2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p5

    :cond_52
    const-string v7, "LockSettingsStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getValidSyntheticPasswordHandleLocked tryHandles="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v7, p5

    const-wide v9, 0x7fffffffffffffffL

    array-length v11, v6

    move-wide v13, v9

    move-wide v8, v7

    const/4 v7, 0x0

    :goto_74
    if-ge v7, v11, :cond_eb

    aget-object v10, v6, v7

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v12, "\\."

    invoke-virtual {v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v15, v12

    const/4 v1, 0x2

    if-ne v15, v1, :cond_e2

    const/4 v1, 0x1

    aget-object v1, v12, v1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    const-string v1, "LockSettingsStorage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getValidSyntheticPasswordHandleLocked file="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  lastModified="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v5

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const/4 v4, 0x0

    aget-object v5, v12, v4

    const/16 v15, 0x10

    invoke-static {v5, v15}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v4

    cmp-long v15, v1, v13

    if-gez v15, :cond_e4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_e4

    move-wide v13, v1

    move-wide v1, v4

    move-wide v8, v1

    goto :goto_e4

    :cond_e2
    move-object/from16 v16, v5

    :cond_e4
    :goto_e4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v16

    move-object/from16 v4, p3

    goto :goto_74

    :cond_eb
    move-object/from16 v16, v5

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getValidSyntheticPasswordHandleLocked return validHandle="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8
.end method

.method public hasBackupPassword(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getGatekeeperLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public hasCarrierPassword(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasChildProfileLock(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCredential(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public hasFMMPassword(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasPassword(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public hasPattern(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method public hasRecoveryPassword(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockRecoveryPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockBackupPin(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPassword(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPattern(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPin(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveDigitalWellbeingPassword(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getDigitalWellbeingPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePrivateModeLockBackupPin(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePrivateModeLockPassword(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePrivateModeLockPattern(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePrivateModeLockPin(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_30
    return-object v0
.end method

.method public listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_10

    return-object v1

    :cond_10
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v3, :cond_5a

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_57

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    :try_start_2e
    aget-object v8, v7, v4

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_3d} :catch_3e

    goto :goto_57

    :catch_3e
    move-exception v8

    const-string v9, "LockSettingsStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse handle "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v7, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_5a
    return-object v1
.end method

.method public prefetchUser(I)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->isFetched(I)Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->setFetched(I)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    # invokes: Lcom/android/server/locksettings/LockSettingsStorage$Cache;->getVersion()I
    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_57

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v3, "locksettings"

    sget-object v4, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    const-string/jumbo v5, "user=?"

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_53

    :goto_3c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v5, v2, v4, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    goto :goto_3c

    :cond_50
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    return-void

    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public readAppLockBackupkPinHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readAppLockFingerprintPasswordHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readAppLockPasswordHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readAppLockPatternHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readAppLockPinHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readBackupPasswordHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    array-length v3, v0

    if-lez v3, :cond_1e

    const-string v3, "LockSettingsStorage"

    const-string/jumbo v4, "readBackupPasswordHash( VERSION_LEGACY )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v3

    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getGatekeeperLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3a

    array-length v3, v0

    if-lez v3, :cond_3a

    const-string v3, "LockSettingsStorage"

    const-string/jumbo v4, "readBackupPasswordHash( VERSION_GATEKEEPER )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v3

    :cond_3a
    const-string v1, "LockSettingsStorage"

    const-string/jumbo v3, "readBackupPasswordHash( NULL )"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public readCarrierPasswordHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readChildProfileLock(I)[B
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPasswordHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPatternHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    iget v2, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    return-object v0

    :cond_12
    return-object v1

    :cond_13
    if-eqz v0, :cond_16

    return-object v0

    :cond_16
    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v2

    return-object v2
.end method

.method public readDigitalWellbeingPasswordHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getDigitalWellbeingPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readFMMPasswordHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 16

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    # invokes: Lcom/android/server/locksettings/LockSettingsStorage$Cache;->getVersion()I
    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5e

    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v4, "locksettings"

    sget-object v5, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v6, "user=? AND name=?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v3, 0x1

    aput-object p1, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_4f

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4f
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1, v0, p3, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    sget-object v3, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    if-ne v0, v3, :cond_5a

    move-object v3, p2

    goto :goto_5d

    :cond_5a
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :goto_5d
    return-object v3

    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v1

    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    move-exception v1

    const-string v2, "LockSettingsStorage"

    const-string v3, "Error reading persistent data block"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v2
.end method

.method public readPrivateModeLockBackupkPinHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readPrivateModeLockPasswordHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readPrivateModeLockPatternHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readPrivateModeLockPinHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readRecoveryPasswordHash(I)[B
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockRecoveryPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readSyntheticPasswordState(IJLjava/lang/String;)[B
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public removeChildProfileLock(I)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public removeUser(I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_50

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    :cond_4b
    monitor-exit v4

    goto :goto_53

    :catchall_4d
    move-exception v3

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_1b .. :try_end_4f} :catchall_4d

    throw v3

    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    :goto_53
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v4

    :try_start_57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v5, "locksettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->removeUser(I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->purgePath(Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_57 .. :try_end_88} :catchall_8d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    nop

    return-void

    :catchall_8d
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public sendLockTypeChangedInfo(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_33

    :try_start_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "isClearLock"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_32

    :catch_15
    move-exception v0

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLockTypeChangedInfo failed!!  mLockTypeCallback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_32
    goto :goto_3b

    :cond_33
    const-string v0, "LockSettingsStorage"

    const-string/jumbo v1, "mLockTypeCallback is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_71

    :try_start_3f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "isClearLock"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4f} :catch_50

    goto :goto_70

    :catch_50
    move-exception v0

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLockTypeChangedInfo for Dex failed!!  mLockTypeCallbackForDex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_70
    goto :goto_79

    :cond_71
    const-string v0, "LockSettingsStorage"

    const-string/jumbo v1, "mLockTypeCallback for Dex is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    return-void
.end method

.method public setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    return-void
.end method

.method public setSecureLockModeChangedCallback(Landroid/os/IRemoteCallback;Z)V
    .registers 3

    if-eqz p2, :cond_5

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

    goto :goto_7

    :cond_5
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    :goto_7
    return-void
.end method

.method public updateCarrierLockPlusMode()Z
    .registers 4

    const-string v0, "LockSettingsStorage"

    const-string/jumbo v1, "updateCarrierLockPlusMode!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockPlusModeFromFile()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iput v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    goto :goto_15

    :cond_12
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    :goto_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(Z)V

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    if-ne v2, v1, :cond_1f

    move v0, v1

    nop

    :cond_1f
    return v0
.end method

.method public writeAppLockBackupPinHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockFingerprintPasswordHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockPasswordHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockPatternHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockPinHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeBackupPasswordHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeCarrierPasswordHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeChildProfileLock(I[B)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    iget-object v1, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    goto :goto_11

    :cond_a
    iget v2, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    iget-object v0, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    :cond_11
    :goto_11
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeDigitalWellbeingPasswordHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getDigitalWellbeingPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeFMMPasswordHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(Z)V

    return-void
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1e
    const-string/jumbo v1, "locksettings"

    const-string/jumbo v2, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v1, "locksettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_48

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    nop

    return-void

    :catchall_48
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public writePersistentDataBlock(III[B)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->toBytes(III[B)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/PersistentDataBlockManagerInternal;->setFrpCredentialHandle([B)V

    return-void
.end method

.method public writePrivateModeLocBackupkPinHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writePrivateModeLockPasswordHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writePrivateModeLockPatternHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writePrivateModeLockPinHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeRecoveryPasswordHash([BI)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockRecoveryPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeSyntheticPasswordState(IJLjava/lang/String;[B)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->ensureSyntheticPasswordDirectoryForUser(I)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

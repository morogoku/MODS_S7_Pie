.class Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;
.super Ljava/lang/Object;
.source "SecureTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/securetimer/SecureTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecureTimerAlarm"
.end annotation


# instance fields
.field public ID:Ljava/lang/String;

.field public adminUid:I

.field public creatorPackage:Ljava/lang/String;

.field public creatorUid:I

.field public indexIneSE:B

.field public tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->tag:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->userId:I

    iput v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorUid:I

    iput v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->adminUid:I

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;BLjava/lang/String;III)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->tag:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->userId:I

    iput v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorUid:I

    iput v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->adminUid:I

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->ID:Ljava/lang/String;

    iput-byte p2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    iput-object p3, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->tag:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->userId:I

    iput p5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorUid:I

    iput p6, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->adminUid:I

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$800(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->ID:Ljava/lang/String;

    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create alarm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;Ljava/lang/String;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->tag:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->userId:I

    iput v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorUid:I

    iput v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->adminUid:I

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->ID:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$800(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorUid:I

    iput-object p2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->tag:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->ID:Ljava/lang/String;

    return-void
.end method

.method private getID()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public loadFromDb(Landroid/content/ContentValues;)V
    .registers 6

    const-string/jumbo v0, "timerIndex"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v1, "[SecureTimerService:] "

    const-string/jumbo v2, "getTimers failed! indexIneSE == null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->userId:I

    const-string v1, "creatorUid"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorUid:I

    const-string v1, "adminUid"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->adminUid:I

    const-string/jumbo v1, "tag"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->tag:Ljava/lang/String;

    const-string v1, "creator"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->ID:Ljava/lang/String;

    const-string v1, "[SecureTimerService:] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadFromDb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeFromDb()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    iget-byte v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->deleteAlarmRecords(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$1000(Lcom/android/server/enterprise/securetimer/SecureTimerService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveIntoDb()Z
    .registers 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "timerIndex"

    iget-byte v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "userId"

    iget v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->userId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "creatorUid"

    iget v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorUid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adminUid"

    iget v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->adminUid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "tag"

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "creator"

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_47
    iget-object v3, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$900(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const-string v4, "SecureTimerTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_5a
    .catchall {:try_start_47 .. :try_end_53} :catchall_58

    move v1, v3

    :goto_54
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_77

    :catchall_58
    move-exception v3

    goto :goto_99

    :catch_5a
    move-exception v3

    :try_start_5b
    const-string v4, "[SecureTimerService:] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveIntoDb - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_5b .. :try_end_76} :catchall_58

    goto :goto_54

    :goto_77
    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveIntoDb: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_99
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " which "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " adminUid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->adminUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " creatorUid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " creatorPackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

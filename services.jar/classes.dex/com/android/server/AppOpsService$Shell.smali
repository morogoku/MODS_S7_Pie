.class Lcom/android/server/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# static fields
.field static final sBinder:Landroid/os/Binder;


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/AppOpsService;

.field mToken:Landroid/os/IBinder;

.field mode:I

.field modeStr:Ljava/lang/String;

.field nonpackageUid:I

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iput-object p2, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    :try_start_a
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    sget-object v1, Lcom/android/server/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    return v0
.end method

.method static strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 4

    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_15

    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_15
    :try_start_15
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method private static strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 5

    :try_start_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    move-exception v0

    :try_start_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    :try_start_c
    invoke-static {p0}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_30

    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_8

    :cond_22
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v0, :cond_29

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_8

    :cond_29
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v0, :cond_8

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    nop

    :cond_30
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_3b

    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_3b
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v0, :cond_48

    return v1

    :cond_48
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-gez v0, :cond_59

    return v1

    :cond_57
    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    :cond_59
    const/4 v0, 0x0

    return v0
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_30

    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_8

    :cond_22
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v2, :cond_29

    iput-object v3, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_8

    :cond_29
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_8

    iput-object v3, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    nop

    :cond_30
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v2, :cond_3b

    const-string v0, "Error: Package name not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3b
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_47

    if-eqz p1, :cond_47

    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_47
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v2, :cond_5a

    return v3

    :cond_58
    iput v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    :cond_5a
    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    if-ne v2, v0, :cond_64

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    :cond_64
    iput v3, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    :try_start_66
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    const/4 v2, 0x0

    if-ne v0, v3, :cond_114

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_114

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x75

    if-ne v0, v5, :cond_114

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_114

    move v0, v4

    :goto_93
    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-ge v0, v5, :cond_b2

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_b2

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v6, :cond_b2

    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    :cond_b2
    if-le v0, v4, :cond_114

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_114

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_c2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v8, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_cc} :catch_112

    add-int/lit8 v0, v0, 0x1

    move v9, v0

    :goto_cf
    :try_start_cf
    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_ea

    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_ea

    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v6, :cond_ea

    add-int/lit8 v9, v9, 0x1

    goto :goto_cf

    :cond_ea
    if-le v9, v0, :cond_10f

    iget-object v6, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_f2
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_f2} :catch_110

    :try_start_f2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x61

    if-ne v8, v10, :cond_103

    add-int/lit16 v10, v7, 0x2710

    invoke-static {v5, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    goto :goto_10d

    :cond_103
    const/16 v10, 0x73

    if-ne v8, v10, :cond_10d

    invoke-static {v5, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_10d
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_10d} :catch_10e

    :cond_10d
    :goto_10d
    goto :goto_10f

    :catch_10e
    move-exception v7

    :cond_10f
    :goto_10f
    goto :goto_114

    :catch_110
    move-exception v0

    goto :goto_114

    :catch_112
    move-exception v5

    move v9, v0

    :cond_114
    :goto_114
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    if-eq v0, v3, :cond_11b

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_15c

    :cond_11b
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/AppOpsService;->access$200(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_137

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    iget v5, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-interface {v0, v1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    :cond_137
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_15c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: No UID for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_15c
    :goto_15c
    return v2
.end method

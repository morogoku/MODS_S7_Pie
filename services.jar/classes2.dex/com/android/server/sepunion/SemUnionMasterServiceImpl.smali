.class public Lcom/android/server/sepunion/SemUnionMasterServiceImpl;
.super Lcom/samsung/android/sepunion/IUnionManager$Stub;
.source "SemUnionMasterServiceImpl.java"


# static fields
.field private static final MAX_LINE_COUNT:I = 0x1f4

.field private static final TAG:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;

.field private static sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static sDumpInformationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSemSystemServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/AbsSemSystemService;",
            ">;"
        }
    .end annotation
.end field

.field private static sUnionIbinderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IUnionManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->initializeSystemMapData()V

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->createSemSystemService(Ljava/lang/String;)V

    :cond_32
    goto :goto_15

    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_38

    invoke-direct {p0}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->makeDirectoryForAppLog()V

    return-void

    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private destroySystemService(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySystemService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_19
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    invoke-interface {v1}, Lcom/android/server/sepunion/AbsSemSystemService;->onDestroy()V

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private dumpFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This log file does not exist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n##### DUMP OF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " #####\n##### (dumpsys sepunion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") #####\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_45
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_5c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    if-eqz v5, :cond_72

    const/16 v5, 0x1f4

    if-gt v4, v5, :cond_72

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_79} :catch_81
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_79} :catch_7c
    .catchall {:try_start_45 .. :try_end_79} :catchall_7a

    goto :goto_85

    :catchall_7a
    move-exception v3

    goto :goto_8d

    :catch_7c
    move-exception v3

    :try_start_7d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_85

    :catch_81
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_7a

    :goto_85
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_8d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    const-string v0, "\n##### SEP UNION MASTER SERVICE #####\n##### (dumpsys sepunion) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_9
    const-string v2, ""

    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_40

    add-int/lit8 v1, v1, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    :cond_40
    goto :goto_15

    :cond_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of SEP Union service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "SEP Union service list"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v5, :cond_80

    invoke-interface {v5, p1, p2, p3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_80
    goto :goto_67

    :cond_81
    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5, p2}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->dumpFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_8b

    :cond_a3
    monitor-exit v0

    return-void

    :catchall_a5
    move-exception v1

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_9 .. :try_end_a7} :catchall_a5

    throw v1
.end method

.method private enforeCallingPermission(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_13} :catch_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_13} :catch_15

    move-object v1, v2

    goto :goto_1e

    :catch_15
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1f

    :catch_1a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1e
    nop

    :goto_1f
    return-object v1
.end method

.method public static getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    monitor-exit v0

    return-object v1

    :cond_1d
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private initializeSystemMapData()V
    .registers 7

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v0, v4

    if-eqz v0, :cond_39

    sget-object v4, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    goto :goto_e

    :cond_3a
    monitor-exit v1

    return-void

    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method private makeDirectoryForAppLog()V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/sepunion/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/16 v1, 0x1ff

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_16
    return-void
.end method


# virtual methods
.method public accessoryStateChanged(Z[B[B)V
    .registers 7

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "accessoryStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "plugin"

    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    if-nez v0, :cond_22

    const-string/jumbo v1, "plugin"

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->createSemSystemService(Ljava/lang/String;)V

    const-string/jumbo v1, "plugin"

    invoke-static {v1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    :cond_22
    if-eqz v0, :cond_28

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->accessoryStateChanged(Z[B[B)V

    goto :goto_2f

    :cond_28
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "accessoryStateChanged : create system fail"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public createSemSystemService(Ljava/lang/String;)V
    .registers 9

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSemSystemService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_19
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_32

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "Already existing service"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_32
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_86

    const/4 v4, 0x1

    :try_start_45
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_6d

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v5, v1

    check-cast v5, Lcom/android/server/sepunion/AbsSemSystemService;

    move-object v2, v5

    sget-object v5, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    move-object v6, v1

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4}, Lcom/android/server/sepunion/AbsSemSystemService;->onCreate(Landroid/os/Bundle;)V

    goto :goto_83

    :cond_6d
    sget-object v4, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "createSemSystemService : obj is NULL"

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/InstantiationException; {:try_start_45 .. :try_end_74} :catch_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_74} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_45 .. :try_end_74} :catch_75
    .catchall {:try_start_45 .. :try_end_74} :catchall_86

    goto :goto_83

    :catch_75
    move-exception v4

    :try_start_76
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_84

    :catch_7a
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_83

    :catch_7f
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_83
    nop

    :cond_84
    :goto_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_76 .. :try_end_88} :catchall_86

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    array-length v1, p3

    if-lez v1, :cond_a6

    const/4 v1, 0x0

    aget-object v2, p3, v1

    const-string v3, "cover"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2a

    aget-object v2, p3, v1

    const-string v4, "friends"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    move v2, v1

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v2, v3

    :goto_2b
    sget-object v4, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    aget-object v5, p3, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    if-eqz v2, :cond_3c

    goto :goto_5e

    :cond_3c
    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    aget-object v4, p3, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    aget-object v3, p3, v1

    sget-object v4, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    aget-object v1, p3, v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v3, v1, p2}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->dumpFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_a5

    :cond_5a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_a5

    :cond_5e
    :goto_5e
    if-eqz v2, :cond_80

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    const-string/jumbo v4, "plugin"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-nez v1, :cond_8a

    const-string/jumbo v4, "plugin"

    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->createSemSystemService(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    const-string/jumbo v5, "plugin"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/AbsSemSystemService;

    move-object v1, v4

    goto :goto_8a

    :cond_80
    sget-object v4, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    aget-object v1, p3, v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    :cond_8a
    :goto_8a
    if-eqz v1, :cond_a4

    array-length v4, p3

    if-ne v4, v3, :cond_9a

    if-eqz v2, :cond_95

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_a4

    :cond_95
    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_a4

    :cond_9a
    array-length v4, p3

    invoke-static {p3, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v1, p1, p2, v3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    nop

    :goto_a5
    goto :goto_a9

    :cond_a6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_a9
    monitor-exit v0

    return-void

    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_e .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 7

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    :cond_1d
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4ea7088b    # -3.15728E-9f

    if-eq v2, v3, :cond_48

    const v3, -0x3ab890cd

    if-eq v2, v3, :cond_3d

    const v3, 0x28b53084

    if-eq v2, v3, :cond_32

    goto :goto_51

    :cond_32
    const-string/jumbo v2, "semeventdelegator"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v1, 0x0

    goto :goto_51

    :cond_3d
    const-string/jumbo v2, "plugin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v1, 0x2

    goto :goto_51

    :cond_48
    const-string v2, "execute"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v1, 0x1

    :cond_51
    :goto_51
    packed-switch v1, :pswitch_data_72

    goto :goto_59

    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->createSemSystemService(Ljava/lang/String;)V

    nop

    :goto_59
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    :cond_6b
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw v1

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_55
        :pswitch_55
    .end packed-switch
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .registers 7

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverSwitchStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "plugin"

    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->notifyCoverSwitchStateChanged(JZ)V

    goto :goto_1f

    :cond_17
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyCoverSwitchStateChanged : there is no system"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .registers 8

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifySmartCoverAttachStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "plugin"

    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    if-nez v0, :cond_23

    const-string/jumbo v1, "plugin"

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->createSemSystemService(Ljava/lang/String;)V

    const-string/jumbo v1, "plugin"

    invoke-static {v1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    :cond_23
    if-eqz v0, :cond_29

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemPluginManagerService;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    goto :goto_31

    :cond_29
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifySmartCoverAttachStateChanged : create system fail"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v3, :cond_26

    invoke-interface {v3, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onBootPhase(I)V

    :cond_26
    goto :goto_d

    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onCleanupUser(I)V
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCleanupUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v3, :cond_2e

    invoke-interface {v3, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onCleanupUser(I)V

    :cond_2e
    goto :goto_15

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_31

    throw v1
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v3, :cond_2e

    invoke-interface {v3, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onStartUser(I)V

    :cond_2e
    goto :goto_15

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_31

    throw v1
.end method

.method public onStopUser(I)V
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v3, :cond_2e

    invoke-interface {v3, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onStopUser(I)V

    :cond_2e
    goto :goto_15

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_31

    throw v1
.end method

.method public onSwitchUser(I)V
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwitchUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v3, :cond_2e

    invoke-interface {v3, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onSwitchUser(I)V

    :cond_2e
    goto :goto_15

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_31

    throw v1
.end method

.method public onUnlockUser(I)V
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnlockUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v3, :cond_2e

    invoke-interface {v3, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onUnlockUser(I)V

    :cond_2e
    goto :goto_15

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_31

    throw v1
.end method

.method public screenTurnedOff()V
    .registers 4

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screenTurnOff"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "plugin"

    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemPluginManagerService;->screenTurnedOff()V

    goto :goto_1f

    :cond_17
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "screenTurnOff : there is no system"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDumpEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "setDumpEnabled"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->enforeCallingPermission(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_20
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDumpEnabled Already Exist"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_35
    sget-object v1, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_3c

    throw v1
.end method

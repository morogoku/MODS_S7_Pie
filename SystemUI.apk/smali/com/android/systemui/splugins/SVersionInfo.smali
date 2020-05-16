.class public Lcom/android/systemui/splugins/SVersionInfo;
.super Ljava/lang/Object;
.source "SVersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/splugins/SVersionInfo$Version;,
        Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;
    }
.end annotation


# instance fields
.field private mDefault:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mVersions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/systemui/splugins/SVersionInfo$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    return-void
.end method

.method private addClass(Ljava/lang/Class;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->version()I

    move-result v4

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-class v2, Lcom/samsung/systemui/splugins/annotations/Requires;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/samsung/systemui/splugins/annotations/Requires;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/annotations/Requires;->version()I

    move-result v6

    invoke-direct {v5, v6, p2}, Lcom/android/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-class v3, Lcom/samsung/systemui/splugins/annotations/Requirements;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/annotations/Requirements;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/annotations/Requirements;->value()[Lcom/samsung/systemui/splugins/annotations/Requires;

    move-result-object v5

    array-length v6, v5

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    iget-object v9, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v8}, Lcom/samsung/systemui/splugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v8}, Lcom/samsung/systemui/splugins/annotations/Requires;->version()I

    move-result v12

    invoke-direct {v11, v12, p2}, Lcom/android/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const-class v5, Lcom/samsung/systemui/splugins/annotations/DependsOn;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/samsung/systemui/splugins/annotations/DependsOn;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/samsung/systemui/splugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    :cond_4
    const-class v6, Lcom/samsung/systemui/splugins/annotations/Dependencies;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/samsung/systemui/splugins/annotations/Dependencies;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Lcom/samsung/systemui/splugins/annotations/Dependencies;->value()[Lcom/samsung/systemui/splugins/annotations/DependsOn;

    move-result-object v7

    array-length v8, v7

    :goto_1
    if-ge v4, v8, :cond_5

    aget-object v9, v7, v4

    invoke-interface {v9}, Lcom/samsung/systemui/splugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/android/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private createVersion(Ljava/lang/Class;)Lcom/android/systemui/splugins/SVersionInfo$Version;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/systemui/splugins/SVersionInfo$Version;"
        }
    .end annotation

    const-class v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->version()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static synthetic lambda$checkVersion$0(Lcom/android/systemui/splugins/SVersionInfo;Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/android/systemui/splugins/SVersionInfo$Version;)V
    .locals 5

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SVersionInfo$Version;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/splugins/SVersionInfo;->createVersion(Ljava/lang/Class;)Lcom/android/systemui/splugins/SVersionInfo$Version;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/splugins/SVersionInfo$Version;->getMajorVersion()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/systemui/splugins/SVersionInfo$Version;->getMajorVersion()I

    move-result v3

    if-gt v2, v3, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not a supporting version. expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/systemui/splugins/SVersionInfo$Version;->access$000(Lcom/android/systemui/splugins/SVersionInfo$Version;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/systemui/splugins/SVersionInfo$Version;->access$000(Lcom/android/systemui/splugins/SVersionInfo$Version;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v2

    :cond_2
    new-instance v2, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not provide an interface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v2
.end method

.method static synthetic lambda$checkVersion$2(Ljava/lang/Class;Lcom/android/systemui/splugins/SVersionInfo$Version;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/splugins/SVersionInfo$Version;->access$100(Lcom/android/systemui/splugins/SVersionInfo$Version;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required dependency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v0
.end method


# virtual methods
.method public addClass(Ljava/lang/Class;)Lcom/android/systemui/splugins/SVersionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/systemui/splugins/SVersionInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    return-object p0
.end method

.method public checkVersion(Lcom/android/systemui/splugins/SVersionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iget-object v1, p1, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$6xGF6jzLKZnPPG987MCfa6d3KvE;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$6xGF6jzLKZnPPG987MCfa6d3KvE;-><init>(Lcom/android/systemui/splugins/SVersionInfo;Landroid/util/ArrayMap;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    sget-object v1, Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$w4DbxrBH-doblsmkIonjReZkPJU;->INSTANCE:Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$w4DbxrBH-doblsmkIonjReZkPJU;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public getDefaultVersion()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-static {v0}, Lcom/android/systemui/splugins/SVersionInfo$Version;->access$000(Lcom/android/systemui/splugins/SVersionInfo$Version;)I

    move-result v0

    return v0
.end method

.method public hasClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasVersionInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

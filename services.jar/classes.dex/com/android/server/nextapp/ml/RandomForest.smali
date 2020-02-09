.class public Lcom/android/server/nextapp/ml/RandomForest;
.super Ljava/lang/Object;
.source "RandomForest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/nextapp/ml/RandomForest$ValueComparator;,
        Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ML-RandomForest"

.field private static final serialVersionUID:J = -0x15c8a19e074e7d3dL


# instance fields
.field private DEBUG:Z

.field private forest:[Lcom/android/server/nextapp/ml/DecisionTree;

.field private treeNum:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/nextapp/ml/RandomForest;->treeNum:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    iput-boolean v0, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    iget-boolean v0, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v0, :cond_19

    const-string v0, "ML-RandomForest"

    const-string v1, "RandomForest created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-void
.end method

.method private baggingInstances([[D[D)Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;
    .registers 11

    new-instance v0, Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;

    invoke-direct {v0, p0}, Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;-><init>(Lcom/android/server/nextapp/ml/RandomForest;)V

    array-length v1, p2

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    new-array v3, v1, [[D

    iput-object v3, v0, Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;->features:[[D

    new-array v3, v1, [D

    iput-object v3, v0, Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;->labels:[D

    new-array v3, v1, [I

    iput-object v3, v0, Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;->index:[I

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_37

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;->features:[[D

    aget-object v6, p1, v4

    invoke-virtual {v6}, [D->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    aput-object v6, v5, v3

    iget-object v5, v0, Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;->labels:[D

    aget-wide v6, p2, v4

    aput-wide v6, v5, v3

    iget-object v5, v0, Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;->index:[I

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_37
    return-object v0
.end method


# virtual methods
.method public adjustTreeNum(I)V
    .registers 5

    const/16 v0, 0x64

    if-ge p1, v0, :cond_7

    iput v0, p0, Lcom/android/server/nextapp/ml/RandomForest;->treeNum:I

    goto :goto_10

    :cond_7
    const/16 v0, 0xc8

    if-le p1, v0, :cond_e

    iput v0, p0, Lcom/android/server/nextapp/ml/RandomForest;->treeNum:I

    goto :goto_10

    :cond_e
    iput p1, p0, Lcom/android/server/nextapp/ml/RandomForest;->treeNum:I

    :goto_10
    iget-boolean v0, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "ML-RandomForest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forest treeNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/nextapp/ml/RandomForest;->treeNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public predict([D)D
    .registers 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    array-length v2, v2

    if-ge v1, v2, :cond_47

    iget-object v2, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/nextapp/ml/DecisionTree;->predict([D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_2a

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_2a
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_47
    iget-boolean v1, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v1, :cond_62

    const-string v1, "ML-RandomForest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "predict..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v1, :cond_8f

    move v1, v7

    move-wide v2, v5

    :cond_8f
    goto :goto_6d

    :cond_90
    return-wide v2
.end method

.method public predict3([D)[D
    .registers 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_48

    iget-object v3, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/android/server/nextapp/ml/DecisionTree;->predict([D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2b

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_2b
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_48
    iget-boolean v2, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v2, :cond_63

    const-string v2, "ML-RandomForest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "predict3..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    new-instance v2, Lcom/android/server/nextapp/ml/RandomForest$ValueComparator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/nextapp/ml/RandomForest$ValueComparator;-><init>(Lcom/android/server/nextapp/ml/RandomForest;Lcom/android/server/nextapp/ml/RandomForest$1;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x3

    new-array v6, v5, [D

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    aput-wide v7, v6, v9

    aput-wide v7, v6, v4

    move v7, v1

    :goto_83
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a0

    if-ge v7, v5, :cond_a0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_83

    :cond_a0
    iget-boolean v5, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v5, :cond_d1

    const-string v5, "ML-RandomForest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "labels: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v6, v1

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v6, v4

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v6, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    return-object v6
.end method

.method public predict5([D)[D
    .registers 16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_48

    iget-object v3, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/android/server/nextapp/ml/DecisionTree;->predict([D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2b

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_2b
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_48
    iget-boolean v2, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v2, :cond_63

    const-string v2, "ML-RandomForest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "predict5..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    new-instance v2, Lcom/android/server/nextapp/ml/RandomForest$ValueComparator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/nextapp/ml/RandomForest$ValueComparator;-><init>(Lcom/android/server/nextapp/ml/RandomForest;Lcom/android/server/nextapp/ml/RandomForest$1;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x5

    new-array v6, v5, [D

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const/4 v9, 0x4

    aput-wide v7, v6, v9

    const/4 v10, 0x3

    aput-wide v7, v6, v10

    const/4 v11, 0x2

    aput-wide v7, v6, v11

    aput-wide v7, v6, v4

    aput-wide v7, v6, v1

    move v7, v1

    :goto_8b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a8

    if-ge v7, v5, :cond_a8

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    aput-wide v12, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8b

    :cond_a8
    iget-boolean v5, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v5, :cond_ed

    const-string v5, "ML-RandomForest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "labels: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v6, v1

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v6, v4

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v6, v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v6, v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v6, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ed
    return-object v6
.end method

.method public predictN([DI)[D
    .registers 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    array-length v3, v3

    if-ge v2, v3, :cond_48

    iget-object v3, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/android/server/nextapp/ml/DecisionTree;->predict([D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_2b

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_2b
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_48
    iget-boolean v2, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v2, :cond_6b

    const-string v2, "ML-RandomForest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "predict"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    new-instance v2, Lcom/android/server/nextapp/ml/RandomForest$ValueComparator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/nextapp/ml/RandomForest$ValueComparator;-><init>(Lcom/android/server/nextapp/ml/RandomForest;Lcom/android/server/nextapp/ml/RandomForest$1;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-array v4, p2, [D

    nop

    :goto_83
    if-ge v1, p2, :cond_8c

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    :cond_8c
    const/4 v1, 0x0

    :goto_8d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_aa

    if-ge v1, p2, :cond_aa

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    :cond_aa
    iget-boolean v5, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v5, :cond_d1

    const-string v5, "Labels: "

    const/4 v1, 0x0

    :goto_b1
    if-ge v1, p2, :cond_cc

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    :cond_cc
    const-string v6, "ML-RandomForest"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    return-object v4
.end method

.method public train(I[[D[D)V
    .registers 10

    if-eqz p2, :cond_8d

    if-eqz p3, :cond_8d

    if-nez p1, :cond_8

    goto/16 :goto_8d

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v0, :cond_2d

    const-string v0, "ML-RandomForest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " labels.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget v0, p0, Lcom/android/server/nextapp/ml/RandomForest;->treeNum:I

    new-array v0, v0, [Lcom/android/server/nextapp/ml/DecisionTree;

    iput-object v0, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    const/4 v0, 0x0

    move v1, v0

    :goto_35
    iget v2, p0, Lcom/android/server/nextapp/ml/RandomForest;->treeNum:I

    if-ge v1, v2, :cond_55

    invoke-direct {p0, p2, p3}, Lcom/android/server/nextapp/ml/RandomForest;->baggingInstances([[D[D)Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    new-instance v4, Lcom/android/server/nextapp/ml/DecisionTree;

    invoke-direct {v4}, Lcom/android/server/nextapp/ml/DecisionTree;-><init>()V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/android/server/nextapp/ml/RandomForest;->forest:[Lcom/android/server/nextapp/ml/DecisionTree;

    aget-object v3, v3, v1

    iget-object v4, v2, Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;->features:[[D

    iget-object v5, v2, Lcom/android/server/nextapp/ml/RandomForest$BaggingInstances;->labels:[D

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/nextapp/ml/DecisionTree;->train(I[[D[D)V

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_55
    iget-boolean v1, p0, Lcom/android/server/nextapp/ml/RandomForest;->DEBUG:Z

    if-eqz v1, :cond_8c

    const-string v1, "ML-RandomForest"

    const-string v2, "First 50 instances:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_61
    array-length v1, p2

    if-ge v0, v1, :cond_8c

    const/16 v1, 0x32

    if-ge v0, v1, :cond_8c

    const-string v1, "ML-RandomForest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p2, v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, p3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_8c
    return-void

    :cond_8d
    :goto_8d
    const-string v0, "ML-RandomForest"

    const-string v1, "Input parameter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class abstract Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PageboostAppSelectionPolicy"
.end annotation


# instance fields
.field final lock:Ljava/lang/Object;

.field mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

.field mRecentPrefetchStrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->lock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/Pageboost$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method abstract AppFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;
.end method

.method FinalizePredict()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method abstract JudgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
.end method

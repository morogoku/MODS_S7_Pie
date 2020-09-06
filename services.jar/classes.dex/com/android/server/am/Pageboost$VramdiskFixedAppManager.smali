.class final Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VramdiskFixedAppManager"
.end annotation


# static fields
.field private static ENABLED:Z

.field private static mApps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCorrectness:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.pageboost.vramdisk.fixedapp.enabled"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->ENABLED:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->mApps:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->mCorrectness:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3500()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->ENABLED:Z

    return v0
.end method

.method public static contains(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->mCorrectness:Z

    if-eqz v1, :cond_20

    sget-object v1, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->mApps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    goto :goto_b

    :cond_20
    :goto_20
    return v0
.end method

.method public static gatherApps(Ljava/util/LinkedList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p0, :cond_8

    return-void

    :cond_8
    sput-object p0, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->mApps:Ljava/util/LinkedList;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->mCorrectness:Z

    return-void
.end method

.method public static getFixedApps()Ljava/util/LinkedList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->mCorrectness:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskFixedAppManager;->mApps:Ljava/util/LinkedList;

    return-object v0
.end method

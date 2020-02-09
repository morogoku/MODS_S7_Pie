.class public final synthetic Lcom/android/systemui/sidescreen/applist/-$$Lambda$SidescreenAppListActivity$dZTQK9s8UABhAeixJNJbg6TVgkg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/sidescreen/applist/-$$Lambda$SidescreenAppListActivity$dZTQK9s8UABhAeixJNJbg6TVgkg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/sidescreen/applist/-$$Lambda$SidescreenAppListActivity$dZTQK9s8UABhAeixJNJbg6TVgkg;

    invoke-direct {v0}, Lcom/android/systemui/sidescreen/applist/-$$Lambda$SidescreenAppListActivity$dZTQK9s8UABhAeixJNJbg6TVgkg;-><init>()V

    sput-object v0, Lcom/android/systemui/sidescreen/applist/-$$Lambda$SidescreenAppListActivity$dZTQK9s8UABhAeixJNJbg6TVgkg;->INSTANCE:Lcom/android/systemui/sidescreen/applist/-$$Lambda$SidescreenAppListActivity$dZTQK9s8UABhAeixJNJbg6TVgkg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->lambda$reloadRecentTasks$0(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    return p1
.end method

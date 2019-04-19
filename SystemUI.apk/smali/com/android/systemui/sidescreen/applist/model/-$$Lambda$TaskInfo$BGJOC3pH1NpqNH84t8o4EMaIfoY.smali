.class public final synthetic Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$BGJOC3pH1NpqNH84t8o4EMaIfoY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/sidescreen/applist/model/TaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/sidescreen/applist/model/TaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$BGJOC3pH1NpqNH84t8o4EMaIfoY;->f$0:Lcom/android/systemui/sidescreen/applist/model/TaskInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$BGJOC3pH1NpqNH84t8o4EMaIfoY;->f$0:Lcom/android/systemui/sidescreen/applist/model/TaskInfo;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, p1}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->lambda$startApp$1(Lcom/android/systemui/sidescreen/applist/model/TaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    return p1
.end method

.class public final synthetic Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppListLoader$LoadingTask$UOZSHrwu4VDl9zxou4-hBj2jOBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppListLoader$LoadingTask$UOZSHrwu4VDl9zxou4-hBj2jOBo;->f$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppListLoader$LoadingTask$UOZSHrwu4VDl9zxou4-hBj2jOBo;->f$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;->lambda$doInBackground$0(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;Landroid/content/pm/ResolveInfo;)Z

    move-result p1

    return p1
.end method

.class public final synthetic Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$MaW6LaAi_HrpE82-bnBY3wEn8PQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$MaW6LaAi_HrpE82-bnBY3wEn8PQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$MaW6LaAi_HrpE82-bnBY3wEn8PQ;

    invoke-direct {v0}, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$MaW6LaAi_HrpE82-bnBY3wEn8PQ;-><init>()V

    sput-object v0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$MaW6LaAi_HrpE82-bnBY3wEn8PQ;->INSTANCE:Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$MaW6LaAi_HrpE82-bnBY3wEn8PQ;

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

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p1}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->lambda$makeKeyFromPackage$0(Landroid/content/pm/ResolveInfo;)Z

    move-result p1

    return p1
.end method

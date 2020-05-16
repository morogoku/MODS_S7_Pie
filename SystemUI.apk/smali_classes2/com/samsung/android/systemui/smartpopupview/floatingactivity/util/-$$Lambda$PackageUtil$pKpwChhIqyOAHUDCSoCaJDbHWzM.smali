.class public final synthetic Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$pKpwChhIqyOAHUDCSoCaJDbHWzM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$pKpwChhIqyOAHUDCSoCaJDbHWzM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$pKpwChhIqyOAHUDCSoCaJDbHWzM;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$pKpwChhIqyOAHUDCSoCaJDbHWzM;-><init>()V

    sput-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$pKpwChhIqyOAHUDCSoCaJDbHWzM;->INSTANCE:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$pKpwChhIqyOAHUDCSoCaJDbHWzM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;

    check-cast p2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;

    invoke-static {p1, p2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->lambda$getPackageList$1(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;)I

    move-result p1

    return p1
.end method

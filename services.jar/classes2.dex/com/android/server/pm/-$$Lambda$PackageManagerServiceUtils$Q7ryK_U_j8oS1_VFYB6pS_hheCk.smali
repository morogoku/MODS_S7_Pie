.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Q7ryK_U_j8oS1_VFYB6pS_hheCk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Q7ryK_U_j8oS1_VFYB6pS_hheCk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Q7ryK_U_j8oS1_VFYB6pS_hheCk;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Q7ryK_U_j8oS1_VFYB6pS_hheCk;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Q7ryK_U_j8oS1_VFYB6pS_hheCk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Q7ryK_U_j8oS1_VFYB6pS_hheCk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    check-cast p2, Landroid/content/pm/PackageParser$Package;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$getPackagesForDexopt$5(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result p1

    return p1
.end method

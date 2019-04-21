.class final enum Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;
.super Ljava/lang/Enum;
.source "ThemeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

.field public static final enum BLACK:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

.field public static final enum NEED_CHECKING:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

.field public static final enum WHITE:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    const-string v1, "NEED_CHECKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    const-string v1, "WHITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->WHITE:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    const-string v1, "BLACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->BLACK:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->WHITE:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->BLACK:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->$VALUES:[Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;
    .registers 2

    const-class v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;
    .registers 1

    sget-object v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->$VALUES:[Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    invoke-virtual {v0}, [Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    return-object v0
.end method

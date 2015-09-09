.class public Lcom/hck/httpserver/BinaryHttpResponseHandler;
.super Lcom/hck/httpserver/HCKHttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# static fields
.field private static mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 61
    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 62
    const-string v2, "image/png"

    aput-object v2, v0, v1

    .line 60
    sput-object v0, Lcom/hck/httpserver/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/hck/httpserver/HCKHttpResponseHandler;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "allowedContentTypes"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/hck/httpserver/BinaryHttpResponseHandler;-><init>()V

    .line 78
    sput-object p1, Lcom/hck/httpserver/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 0
    .parameter "e"
    .parameter "responseBody"

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;[B)V

    .line 137
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    invoke-super {p0, p1}, Lcom/hck/httpserver/HCKHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 156
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 146
    .local v0, response:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, [B

    invoke-virtual {p0, v2, v1}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->handleSuccessMessage(I[B)V

    goto :goto_0

    .line 149
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 150
    .restart local v0       #response:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Throwable;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleSuccessMessage(I[B)V
    .locals 0
    .parameter "statusCode"
    .parameter "responseBody"

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->onSuccess(I[B)V

    .line 133
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;[B)V
    .locals 0
    .parameter "error"
    .parameter "binaryData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public onSuccess(I[B)V
    .locals 0
    .parameter "statusCode"
    .parameter "binaryData"

    .prologue
    .line 98
    invoke-virtual {p0, p2}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->onSuccess([B)V

    .line 99
    return-void
.end method

.method public onSuccess([B)V
    .locals 0
    .parameter "binaryData"

    .prologue
    .line 90
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .parameter "e"
    .parameter "responseBody"

    .prologue
    const/4 v2, 0x1

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 125
    return-void
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 14
    .parameter "response"
    .parameter "url"

    .prologue
    .line 163
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 164
    .local v8, status:Lorg/apache/http/StatusLine;
    const-string v10, "Content-Type"

    invoke-interface {p1, v10}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 165
    .local v2, contentTypeHeaders:[Lorg/apache/http/Header;
    const/4 v7, 0x0

    .line 166
    .local v7, responseBody:[B
    array-length v10, v2

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 168
    new-instance v10, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const-string v12, "None, or more than one, Content-Type Header found!"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v10, v7}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    .line 199
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v10, 0x0

    aget-object v1, v2, v10

    .line 172
    .local v1, contentTypeHeader:Lorg/apache/http/Header;
    const/4 v6, 0x0

    .line 173
    .local v6, foundAllowedContentType:Z
    sget-object v11, Lcom/hck/httpserver/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v12, :cond_1

    .line 178
    if-nez v6, :cond_3

    .line 180
    new-instance v10, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const-string v12, "Content-Type not allowed!"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v10, v7}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 173
    :cond_1
    aget-object v0, v11, v10

    .line 174
    .local v0, anAllowedContentType:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 175
    const/4 v6, 0x1

    .line 173
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 184
    .end local v0           #anAllowedContentType:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .line 185
    .local v4, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 186
    .local v9, temp:Lorg/apache/http/HttpEntity;
    if-eqz v9, :cond_4

    .line 187
    new-instance v5, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v5, v9}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .local v5, entity:Lorg/apache/http/HttpEntity;
    move-object v4, v5

    .line 189
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    :cond_4
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 194
    .end local v9           #temp:Lorg/apache/http/HttpEntity;
    :goto_2
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0x12c

    if-lt v10, v11, :cond_5

    .line 195
    new-instance v10, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v10, v7}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 190
    :catch_0
    move-exception v3

    .line 191
    .local v3, e:Ljava/io/IOException;
    const/4 v10, 0x0

    invoke-virtual {p0, v3, v10}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_2

    .line 197
    .end local v3           #e:Ljava/io/IOException;
    :cond_5
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {p0, v10, v7}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->sendSuccessMessage(I[B)V

    goto :goto_0
.end method

.method protected sendSuccessMessage(I[B)V
    .locals 3
    .parameter "statusCode"
    .parameter "responseBody"

    .prologue
    const/4 v2, 0x0

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/httpserver/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 120
    return-void
.end method

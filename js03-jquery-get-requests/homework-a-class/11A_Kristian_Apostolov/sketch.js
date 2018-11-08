$(document).ready(() => {
	$("#btnLoadJSON").click(() => {
		$.ajax({
			url: $("#txtJSONurl").val(),
			type: 'GET',
			dataType: 'json',
			crossDomain: true,
			processData: false,
			success: (data, status, xhr) => {
				$('#container').append('{');
				let text = '';
				for (let key of Object.keys(data)) {
					text = key + ': ' + data[key];
					let item = $(`<li>${text}</li>`);
					$('#container').append(item);
				}
				$('#container').append('}<br><br>');
			},
			error: (data, status, xhr) => {
				$('#container').append('{');
				$('#container').append($(`<li>success: false</li>`));
				$('#container').append($(`<li>statusCode: ${data.status}</li>`));
				$('#container').append('}<br><br>');
			}
		});
	});
});
